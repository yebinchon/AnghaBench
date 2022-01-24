#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  e_scn; } ;
struct TYPE_13__ {TYPE_1__ e_elf; } ;
struct TYPE_15__ {scalar_t__ e_kind; TYPE_2__ e_u; } ;
struct TYPE_14__ {TYPE_4__* s_elf; } ;
typedef  TYPE_3__ Elf_Scn ;
typedef  TYPE_4__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 scalar_t__ ELF_K_ELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  scntree ; 

Elf_Scn *
FUNC3(Elf *e, Elf_Scn *s)
{
	if (e == NULL || (e->e_kind != ELF_K_ELF) ||
	    (s && s->s_elf != e)) {
		FUNC0(ARGUMENT, 0);
		return (NULL);
	}

	return (s == NULL ? FUNC2(e, (size_t) 1) :
	    FUNC1(scntree, &e->e_u.e_elf.e_scn, s));
}