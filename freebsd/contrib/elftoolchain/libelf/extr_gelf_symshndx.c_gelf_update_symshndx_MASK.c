#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct _Libelf_Data {TYPE_4__* d_scn; } ;
struct TYPE_15__ {int e_class; int /*<<< orphan*/  e_version; } ;
struct TYPE_14__ {scalar_t__ d_type; size_t d_size; scalar_t__ d_buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_12__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_13__ {TYPE_3__ s_shdr; TYPE_6__* s_elf; } ;
typedef  int /*<<< orphan*/  GElf_Sym ;
typedef  TYPE_4__ Elf_Scn ;
typedef  TYPE_5__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf32_Word ;
typedef  TYPE_6__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 scalar_t__ ELF_T_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_5__*,int,int /*<<< orphan*/ *) ; 

int
FUNC5(Elf_Data *d, Elf_Data *id, int ndx, GElf_Sym *gs,
    Elf32_Word xindex)
{
	int ec;
	Elf *e;
	size_t msz;
	Elf_Scn *scn;
	uint32_t sh_type;
	struct _Libelf_Data *ld, *lid;

	ld = (struct _Libelf_Data *) d;
	lid = (struct _Libelf_Data *) id;

	if (FUNC4(d, ndx, gs) == 0)
		return (0);

	if (lid == NULL || (scn = lid->d_scn) == NULL ||
	    (e = scn->s_elf) == NULL || (e != ld->d_scn->s_elf)) {
		FUNC0(ARGUMENT, 0);
		return (0);
	}

	ec = e->e_class;
	FUNC3(ec == ELFCLASS32 || ec == ELFCLASS64);

	if (ec == ELFCLASS32)
		sh_type = scn->s_shdr.s_shdr32.sh_type;
	else
		sh_type = scn->s_shdr.s_shdr64.sh_type;

	if (FUNC2(sh_type) != ELF_T_WORD ||
	    d->d_type != ELF_T_WORD) {
		FUNC0(ARGUMENT, 0);
		return (0);
	}

	msz = FUNC1(ELF_T_WORD, ec, e->e_version);

	FUNC3(msz > 0);
	FUNC3(ndx >= 0);

	if (msz * (size_t) ndx >= id->d_size) {
		FUNC0(ARGUMENT, 0);
		return (0);
	}

	*(((Elf32_Word *) id->d_buf) + ndx) = xindex;

	return (1);
}