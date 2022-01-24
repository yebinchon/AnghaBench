#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {size_t st_size; } ;
struct TYPE_3__ {scalar_t__* e_ident; } ;
typedef  int /*<<< orphan*/  Elf64_Ehdr ;
typedef  TYPE_1__ Elf32_Ehdr ;

/* Variables and functions */
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
 size_t EI_MAG0 ; 
 size_t EI_MAG1 ; 
 size_t EI_MAG2 ; 
 size_t EI_MAG3 ; 
 scalar_t__ ELFCLASS64 ; 
 scalar_t__ ELFDATA2MSB ; 
 scalar_t__ ELFMAG0 ; 
 scalar_t__ ELFMAG1 ; 
 scalar_t__ ELFMAG2 ; 
 scalar_t__ ELFMAG3 ; 
 scalar_t__ EOF ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  byteorder_be ; 
 int /*<<< orphan*/  byteorder_le ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 int /*<<< orphan*/  is_verbose ; 
 void* FUNC8 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * order ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 

int FUNC14(int argc, char **argv)
{
	struct stat st;
	Elf32_Ehdr *hdr32;
	Elf64_Ehdr *hdr64;
	size_t len;
	void *buffer;
	int fd, be, b64;

	while (argc > 1 && FUNC11("-v", argv[1]) == 0) {
		argv++;
		argc--;
		is_verbose++;
	}

	if (argc != 3)
		FUNC12();

	/* map the module into memory */
	fd = FUNC9(argv[1], O_RDONLY);
	if (fd < 0) {
		FUNC10("open input");
		FUNC1(1);
	}

	if (FUNC7(fd, &st) < 0) {
		FUNC10("fstat");
		FUNC1(1);
	}

	len = st.st_size;

	buffer = FUNC8(NULL, len, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
	if (buffer == MAP_FAILED) {
		FUNC10("mmap");
		FUNC1(1);
	}

	if (FUNC0(fd) < 0) {
		FUNC10("close input");
		FUNC1(1);
	}

	/* check it's an ELF object */
	hdr32 = buffer;
	hdr64 = buffer;

	if (hdr32->e_ident[EI_MAG0] != ELFMAG0 ||
	    hdr32->e_ident[EI_MAG1] != ELFMAG1 ||
	    hdr32->e_ident[EI_MAG2] != ELFMAG2 ||
	    hdr32->e_ident[EI_MAG3] != ELFMAG3
	    ) {
		FUNC6(stderr, "Module does not appear to be ELF\n");
		FUNC1(3);
	}

	/* determine endianness and word size */
	b64 = (hdr32->e_ident[EI_CLASS] == ELFCLASS64);
	be = (hdr32->e_ident[EI_DATA] == ELFDATA2MSB);
	order = be ? &byteorder_be : &byteorder_le;

	FUNC13("Module is %s-bit %s-endian\n",
		b64 ? "64" : "32",
		be ? "big" : "little");

	/* open the output file */
	outfd = FUNC5(argv[2], "w");
	if (!outfd) {
		FUNC10("open output");
		FUNC1(1);
	}

	/* perform the extraction */
	if (b64)
		FUNC3(buffer, len, hdr64);
	else
		FUNC2(buffer, len, hdr32);

	/* done */
	if (FUNC4(outfd) == EOF) {
		FUNC10("close output");
		FUNC1(1);
	}

	return 0;
}