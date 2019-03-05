VERSION=1.0-1

build:
	dpkg-deb --build docker2vm_${VERSION}

install: build
	sudo dpkg --force-depends -i docker2vm_${VERSION}.deb

clean:
	rm -f docker2vm_${VERSION}.deb
