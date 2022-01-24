#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
 int EI_NIDENT ; 
#define  ELFCLASS32 131 
#define  ELFCLASS64 130 
#define  ELFDATA2LSB 129 
#define  ELFDATA2MSB 128 
 char* ELFMAG ; 
 int SELFMAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char **argv)
{
	unsigned char ei[EI_NIDENT];
	union { short s; char c[2]; } endian_test;

	if (argc != 2) {
		FUNC1(stderr, "Error: no arch\n");
	}
	if (FUNC2(ei, 1, EI_NIDENT, stdin) != EI_NIDENT) {
		FUNC1(stderr, "Error: input truncated\n");
		return 1;
	}
	if (FUNC3(ei, ELFMAG, SELFMAG) != 0) {
		FUNC1(stderr, "Error: not ELF\n");
		return 1;
	}
	switch (ei[EI_CLASS]) {
	case ELFCLASS32:
		FUNC4("#define KERNEL_ELFCLASS ELFCLASS32\n");
		break;
	case ELFCLASS64:
		FUNC4("#define KERNEL_ELFCLASS ELFCLASS64\n");
		break;
	default:
		FUNC0(1);
	}
	switch (ei[EI_DATA]) {
	case ELFDATA2LSB:
		FUNC4("#define KERNEL_ELFDATA ELFDATA2LSB\n");
		break;
	case ELFDATA2MSB:
		FUNC4("#define KERNEL_ELFDATA ELFDATA2MSB\n");
		break;
	default:
		FUNC0(1);
	}

	if (sizeof(unsigned long) == 4) {
		FUNC4("#define HOST_ELFCLASS ELFCLASS32\n");
	} else if (sizeof(unsigned long) == 8) {
		FUNC4("#define HOST_ELFCLASS ELFCLASS64\n");
	}

	endian_test.s = 0x0102;
	if (FUNC3(endian_test.c, "\x01\x02", 2) == 0)
		FUNC4("#define HOST_ELFDATA ELFDATA2MSB\n");
	else if (FUNC3(endian_test.c, "\x02\x01", 2) == 0)
		FUNC4("#define HOST_ELFDATA ELFDATA2LSB\n");
	else
		FUNC0(1);

	if ((FUNC5(argv[1], "h8300") == 0)
	    || (FUNC5(argv[1], "blackfin") == 0))
		FUNC4("#define MODULE_SYMBOL_PREFIX \"_\"\n");
	else
		FUNC4("#define MODULE_SYMBOL_PREFIX \"\"\n");

	return 0;
}