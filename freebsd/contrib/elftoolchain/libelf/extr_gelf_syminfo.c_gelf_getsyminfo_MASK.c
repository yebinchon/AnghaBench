#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_4__ d_data; TYPE_6__* d_scn; } ;
struct TYPE_19__ {int e_class; int /*<<< orphan*/  e_version; } ;
struct TYPE_18__ {int /*<<< orphan*/  si_flags; int /*<<< orphan*/  si_boundto; } ;
struct TYPE_13__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_12__ {int /*<<< orphan*/  sh_type; } ;
struct TYPE_14__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_17__ {TYPE_3__ s_shdr; TYPE_9__* s_elf; } ;
struct TYPE_16__ {int /*<<< orphan*/  si_flags; int /*<<< orphan*/  si_boundto; } ;
typedef  TYPE_5__ GElf_Syminfo ;
typedef  TYPE_6__ Elf_Scn ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  TYPE_5__ Elf64_Syminfo ;
typedef  TYPE_8__ Elf32_Syminfo ;
typedef  TYPE_9__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 scalar_t__ ELF_T_SYMINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

GElf_Syminfo *
FUNC4(Elf_Data *ed, int ndx, GElf_Syminfo *dst)
{
	int ec;
	Elf *e;
	size_t msz;
	Elf_Scn *scn;
	uint32_t sh_type;
	struct _Libelf_Data *d;
	Elf32_Syminfo *syminfo32;
	Elf64_Syminfo *syminfo64;

	d = (struct _Libelf_Data *) ed;

	if (d == NULL || ndx < 0 || dst == NULL ||
	    (scn = d->d_scn) == NULL ||
	    (e = scn->s_elf) == NULL) {
		FUNC0(ARGUMENT, 0);
		return (NULL);
	}

	ec = e->e_class;
	FUNC3(ec == ELFCLASS32 || ec == ELFCLASS64);

	if (ec == ELFCLASS32)
		sh_type = scn->s_shdr.s_shdr32.sh_type;
	else
		sh_type = scn->s_shdr.s_shdr64.sh_type;

	if (FUNC2(sh_type) != ELF_T_SYMINFO) {
		FUNC0(ARGUMENT, 0);
		return (NULL);
	}

	msz = FUNC1(ELF_T_SYMINFO, ec, e->e_version);

	FUNC3(msz > 0);
	FUNC3(ndx >= 0);

	if (msz * (size_t) ndx >= d->d_data.d_size) {
		FUNC0(ARGUMENT, 0);
		return (NULL);
	}

	if (ec == ELFCLASS32) {

		syminfo32 = (Elf32_Syminfo *) d->d_data.d_buf + ndx;

		dst->si_boundto = syminfo32->si_boundto;
		dst->si_flags   = syminfo32->si_flags;

	} else {

		syminfo64 = (Elf64_Syminfo *) d->d_data.d_buf + ndx;

		*dst = *syminfo64;
	}

	return (dst);
}