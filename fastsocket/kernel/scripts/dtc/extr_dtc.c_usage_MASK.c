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
 int DEFAULT_FDT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void  __attribute__ ((noreturn)) FUNC2(void)
{
	FUNC1(stderr, "Usage:\n");
	FUNC1(stderr, "\tdtc [options] <input file>\n");
	FUNC1(stderr, "\nOptions:\n");
	FUNC1(stderr, "\t-h\n");
	FUNC1(stderr, "\t\tThis help text\n");
	FUNC1(stderr, "\t-q\n");
	FUNC1(stderr, "\t\tQuiet: -q suppress warnings, -qq errors, -qqq all\n");
	FUNC1(stderr, "\t-I <input format>\n");
	FUNC1(stderr, "\t\tInput formats are:\n");
	FUNC1(stderr, "\t\t\tdts - device tree source text\n");
	FUNC1(stderr, "\t\t\tdtb - device tree blob\n");
	FUNC1(stderr, "\t\t\tfs - /proc/device-tree style directory\n");
	FUNC1(stderr, "\t-o <output file>\n");
	FUNC1(stderr, "\t-O <output format>\n");
	FUNC1(stderr, "\t\tOutput formats are:\n");
	FUNC1(stderr, "\t\t\tdts - device tree source text\n");
	FUNC1(stderr, "\t\t\tdtb - device tree blob\n");
	FUNC1(stderr, "\t\t\tasm - assembler source\n");
	FUNC1(stderr, "\t-V <output version>\n");
	FUNC1(stderr, "\t\tBlob version to produce, defaults to %d (relevant for dtb\n\t\tand asm output only)\n", DEFAULT_FDT_VERSION);
	FUNC1(stderr, "\t-R <number>\n");
	FUNC1(stderr, "\t\tMake space for <number> reserve map entries (relevant for \n\t\tdtb and asm output only)\n");
	FUNC1(stderr, "\t-S <bytes>\n");
	FUNC1(stderr, "\t\tMake the blob at least <bytes> long (extra space)\n");
	FUNC1(stderr, "\t-p <bytes>\n");
	FUNC1(stderr, "\t\tAdd padding to the blob of <bytes> long (extra space)\n");
	FUNC1(stderr, "\t-b <number>\n");
	FUNC1(stderr, "\t\tSet the physical boot cpu\n");
	FUNC1(stderr, "\t-f\n");
	FUNC1(stderr, "\t\tForce - try to produce output even if the input tree has errors\n");
	FUNC1(stderr, "\t-v\n");
	FUNC1(stderr, "\t\tPrint DTC version and exit\n");
	FUNC0(3);
}