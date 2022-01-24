#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_19__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_4__ d_data; TYPE_6__* d_scn; } ;
struct TYPE_23__ {int e_class; int /*<<< orphan*/  e_version; } ;
struct TYPE_22__ {int /*<<< orphan*/  r_info; } ;
struct TYPE_17__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_16__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_18__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_21__ {TYPE_3__ s_shdr; TYPE_9__* s_elf; } ;
struct TYPE_20__ {int /*<<< orphan*/  r_info; } ;
typedef  TYPE_5__ GElf_Rela ;
typedef  TYPE_6__ Elf_Scn ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  TYPE_5__ Elf64_Rela ;
typedef  int /*<<< orphan*/  Elf32_Word ;
typedef  TYPE_8__ Elf32_Rela ;
typedef  TYPE_9__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 scalar_t__ ELF_T_RELA ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RANGE ; 
 scalar_t__ FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  r_addend ; 
 int /*<<< orphan*/  r_offset ; 

int
FUNC13(Elf_Data *ed, int ndx, GElf_Rela *dr)
{
	int ec;
	Elf *e;
	size_t msz;
	Elf_Scn *scn;
	uint32_t sh_type;
	Elf32_Rela *rela32;
	Elf64_Rela *rela64;
	struct _Libelf_Data *d;

	d = (struct _Libelf_Data *) ed;

	if (d == NULL || ndx < 0 || dr == NULL ||
	    (scn = d->d_scn) == NULL ||
	    (e = scn->s_elf) == NULL) {
		FUNC7(ARGUMENT, 0);
		return (0);
	}

	ec = e->e_class;
	FUNC12(ec == ELFCLASS32 || ec == ELFCLASS64);

	if (ec == ELFCLASS32)
		sh_type = scn->s_shdr.s_shdr32.sh_type;
	else
		sh_type = scn->s_shdr.s_shdr64.sh_type;

	if (FUNC11(sh_type) != ELF_T_RELA) {
		FUNC7(ARGUMENT, 0);
		return (0);
	}

	msz = FUNC10(ELF_T_RELA, ec, e->e_version);

	FUNC12(msz > 0);
	FUNC12(ndx >= 0);

	if (msz * (size_t) ndx >= d->d_data.d_size) {
		FUNC7(ARGUMENT, 0);
		return (0);
	}

	if (ec == ELFCLASS32) {
		rela32 = (Elf32_Rela *) d->d_data.d_buf + ndx;

		FUNC6(rela32, dr, r_offset);

		if (FUNC3(dr->r_info) > FUNC1(~0UL) ||
		    FUNC4(dr->r_info) > FUNC2(~0U)) {
			FUNC7(RANGE, 0);
			return (0);
		}
		rela32->r_info = FUNC0(
			(Elf32_Word) FUNC3(dr->r_info),
			(Elf32_Word) FUNC4(dr->r_info));

		FUNC5(rela32, dr, r_addend);
	} else {
		rela64 = (Elf64_Rela *) d->d_data.d_buf + ndx;

		*rela64 = *dr;

		if (FUNC8(e))
			rela64->r_info = FUNC9(dr->r_info);
	}

	return (1);
}