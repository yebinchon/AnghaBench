#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_9__ {int ds_symid; } ;
typedef  TYPE_3__ dt_sym_t ;
struct TYPE_8__ {int /*<<< orphan*/ * cts_data; } ;
struct TYPE_7__ {scalar_t__ cts_data; } ;
struct TYPE_10__ {int dm_symfree; int dm_aslen; scalar_t__ dm_asrsv; scalar_t__ dm_asmap; TYPE_2__ dm_strtab; TYPE_3__* dm_symchains; TYPE_1__ dm_symtab; } ;
typedef  TYPE_4__ dt_module_t ;
struct TYPE_11__ {scalar_t__ st_value; scalar_t__ st_size; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_5__ Elf64_Sym ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STB_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * dt_module_strtab ; 
 int /*<<< orphan*/  dt_module_symcomp64 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(dt_module_t *dmp)
{
	Elf64_Sym *symtab = (Elf64_Sym *)dmp->dm_symtab.cts_data;
	Elf64_Sym **sympp = (Elf64_Sym **)dmp->dm_asmap;
	const dt_sym_t *dsp = dmp->dm_symchains + 1;
	uint_t i, n = dmp->dm_symfree;

	for (i = 1; i < n; i++, dsp++) {
		Elf64_Sym *sym = symtab + dsp->ds_symid;
		if (sym->st_value != 0 &&
		    (FUNC0(sym->st_info) != STB_LOCAL || sym->st_size))
			*sympp++ = sym;
	}

	dmp->dm_aslen = (uint_t)(sympp - (Elf64_Sym **)dmp->dm_asmap);
	FUNC1(dmp->dm_aslen <= dmp->dm_asrsv);

	dt_module_strtab = dmp->dm_strtab.cts_data;
	FUNC2(dmp->dm_asmap, dmp->dm_aslen,
	    sizeof (Elf64_Sym *), dt_module_symcomp64);
	dt_module_strtab = NULL;
}