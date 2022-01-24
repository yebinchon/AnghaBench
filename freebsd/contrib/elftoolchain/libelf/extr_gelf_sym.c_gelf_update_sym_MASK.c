#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_4__ d_data; TYPE_6__* d_scn; } ;
struct TYPE_20__ {int e_class; int /*<<< orphan*/  e_version; } ;
struct TYPE_19__ {int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_name; } ;
struct TYPE_14__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_13__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_15__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_18__ {TYPE_3__ s_shdr; TYPE_9__* s_elf; } ;
struct TYPE_17__ {int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_name; } ;
typedef  TYPE_5__ GElf_Sym ;
typedef  TYPE_6__ Elf_Scn ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  TYPE_5__ Elf64_Sym ;
typedef  TYPE_8__ Elf32_Sym ;
typedef  TYPE_9__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 scalar_t__ ELF_T_SYM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  st_size ; 
 int /*<<< orphan*/  st_value ; 

int
FUNC5(Elf_Data *ed, int ndx, GElf_Sym *gs)
{
	int ec;
	Elf *e;
	size_t msz;
	Elf_Scn *scn;
	uint32_t sh_type;
	Elf32_Sym *sym32;
	Elf64_Sym *sym64;
	struct _Libelf_Data *d;

	d = (struct _Libelf_Data *) ed;

	if (d == NULL || ndx < 0 || gs == NULL ||
	    (scn = d->d_scn) == NULL ||
	    (e = scn->s_elf) == NULL) {
		FUNC1(ARGUMENT, 0);
		return (0);
	}

	ec = e->e_class;
	FUNC4(ec == ELFCLASS32 || ec == ELFCLASS64);

	if (ec == ELFCLASS32)
		sh_type = scn->s_shdr.s_shdr32.sh_type;
	else
		sh_type = scn->s_shdr.s_shdr64.sh_type;

	if (FUNC3(sh_type) != ELF_T_SYM) {
		FUNC1(ARGUMENT, 0);
		return (0);
	}

	msz = FUNC2(ELF_T_SYM, ec, e->e_version);

	FUNC4(msz > 0);
	FUNC4(ndx >= 0);

	if (msz * (size_t) ndx >= d->d_data.d_size) {
		FUNC1(ARGUMENT, 0);
		return (0);
	}

	if (ec == ELFCLASS32) {
		sym32 = (Elf32_Sym *) d->d_data.d_buf + ndx;

		sym32->st_name  = gs->st_name;
		sym32->st_info  = gs->st_info;
		sym32->st_other = gs->st_other;
		sym32->st_shndx = gs->st_shndx;

		FUNC0(sym32, gs, st_value);
		FUNC0(sym32, gs, st_size);
	} else {
		sym64 = (Elf64_Sym *) d->d_data.d_buf + ndx;

		*sym64 = *gs;
	}

	return (1);
}