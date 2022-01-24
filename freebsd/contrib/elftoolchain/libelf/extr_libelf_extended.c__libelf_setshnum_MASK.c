#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t e_shnum; } ;
struct TYPE_13__ {size_t e_shnum; } ;
struct TYPE_10__ {size_t sh_size; } ;
struct TYPE_9__ {size_t sh_size; } ;
struct TYPE_11__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_12__ {scalar_t__ s_ndx; TYPE_3__ s_shdr; } ;
typedef  TYPE_4__ Elf_Scn ;
typedef  TYPE_5__ Elf64_Ehdr ;
typedef  TYPE_6__ Elf32_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int ELFCLASS32 ; 
 int /*<<< orphan*/  ELF_C_SET ; 
 int /*<<< orphan*/  ELF_F_DIRTY ; 
 size_t SHN_LORESERVE ; 
 scalar_t__ SHN_UNDEF ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(Elf *e, void *eh, int ec, size_t shnum)
{
	Elf_Scn *scn;

	if (shnum >= SHN_LORESERVE) {
		if ((scn = FUNC0(e)) == NULL)
			return (0);

		FUNC1(scn->s_ndx == SHN_UNDEF);

		if (ec == ELFCLASS32)
			scn->s_shdr.s_shdr32.sh_size = shnum;
		else
			scn->s_shdr.s_shdr64.sh_size = shnum;

		(void) FUNC2(scn, ELF_C_SET, ELF_F_DIRTY);

		shnum = 0;
	}

	if (ec == ELFCLASS32)
		((Elf32_Ehdr *) eh)->e_shnum = shnum & 0xFFFFU;
	else
		((Elf64_Ehdr *) eh)->e_shnum = shnum & 0xFFFFU;


	return (1);
}