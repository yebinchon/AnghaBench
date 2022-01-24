#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct elf_info {int dummy; } ;
struct TYPE_4__ {unsigned int r_addend; int /*<<< orphan*/  r_info; } ;
typedef  int /*<<< orphan*/  Elf_Shdr ;
typedef  TYPE_1__ Elf_Rela ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  R_MIPS_26 130 
#define  R_MIPS_32 129 
 unsigned int R_MIPS_HI16 ; 
#define  R_MIPS_LO16 128 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int* FUNC2 (struct elf_info*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct elf_info *elf, Elf_Shdr *sechdr, Elf_Rela *r)
{
	unsigned int r_typ = FUNC0(r->r_info);
	unsigned int *location = FUNC2(elf, sechdr, r);
	unsigned int inst;

	if (r_typ == R_MIPS_HI16)
		return 1;	/* skip this */
	inst = FUNC1(*location);
	switch (r_typ) {
	case R_MIPS_LO16:
		r->r_addend = inst & 0xffff;
		break;
	case R_MIPS_26:
		r->r_addend = (inst & 0x03ffffff) << 2;
		break;
	case R_MIPS_32:
		r->r_addend = inst;
		break;
	}
	return 0;
}