#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  e_scn; } ;
struct TYPE_6__ {TYPE_1__ e_elf; } ;
struct TYPE_7__ {scalar_t__ e_kind; TYPE_2__ e_u; } ;
typedef  int Elf_Kind ;
typedef  TYPE_3__ Elf ;

/* Variables and functions */
#define  ELF_K_ELF 128 
 scalar_t__ ELF_K_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(Elf *e, Elf_Kind kind)
{
	FUNC1(e != NULL);
	FUNC1(e->e_kind == ELF_K_NONE);

	e->e_kind = kind;

	switch (kind) {
	case ELF_K_ELF:
		FUNC0(&e->e_u.e_elf.e_scn);
		break;
	default:
		break;
	}
}