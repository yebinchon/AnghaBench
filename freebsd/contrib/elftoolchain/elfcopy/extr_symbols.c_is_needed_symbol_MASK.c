#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elfcopy {int flags; int /*<<< orphan*/  v_grp; int /*<<< orphan*/  v_rel; } ;
struct TYPE_3__ {int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ GElf_Sym ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int RELOCATABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct elfcopy *ecp, int i, GElf_Sym *s)
{

	/* If symbol involves relocation, it is needed. */
	if (FUNC0(ecp->v_rel, i))
		return (1);

	/* Symbols referred by COMDAT sections are needed. */
	if (FUNC0(ecp->v_grp, i))
		return (1);

	/*
	 * For relocatable files (.o files), global and weak symbols
	 * are needed.
	 */
	if (ecp->flags & RELOCATABLE) {
		if (FUNC1(s->st_info) || FUNC2(s->st_info))
			return (1);
	}

	return (0);
}