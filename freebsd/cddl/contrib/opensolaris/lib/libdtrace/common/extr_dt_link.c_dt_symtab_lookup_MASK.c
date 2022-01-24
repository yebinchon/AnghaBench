#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  uintptr_t uint64_t ;
struct TYPE_9__ {scalar_t__ d_buf; } ;
struct TYPE_8__ {uintptr_t st_value; scalar_t__ st_shndx; uintptr_t st_size; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;
typedef  uintptr_t Elf64_Addr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STT_FUNC ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(Elf_Data *data_sym, int start, int end, uintptr_t addr,
    uint_t shn, GElf_Sym *sym, int uses_funcdesc, Elf *elf)
{
	Elf64_Addr symval;
	Elf_Scn *opd_scn;
	Elf_Data *opd_desc;
	int i;

	for (i = start; i < end && FUNC3(data_sym, i, sym) != NULL; i++) {
		if (FUNC0(sym->st_info) == STT_FUNC) {
			symval = sym->st_value;
			if (uses_funcdesc) {
				opd_scn = FUNC1(elf, sym->st_shndx);
				opd_desc = FUNC2(opd_scn, NULL);
				symval =
				    *(uint64_t*)((char *)opd_desc->d_buf + symval);
			}
			if ((uses_funcdesc || shn == sym->st_shndx) &&
			    symval <= addr && addr < symval + sym->st_size)
				return (0);
		}
	}

	return (-1);
}