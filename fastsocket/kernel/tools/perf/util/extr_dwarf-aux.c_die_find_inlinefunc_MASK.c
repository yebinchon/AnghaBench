#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  __die_find_inline_cb ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

Dwarf_Die *FUNC2(Dwarf_Die *sp_die, Dwarf_Addr addr,
			       Dwarf_Die *die_mem)
{
	Dwarf_Die tmp_die;

	sp_die = FUNC0(sp_die, __die_find_inline_cb, &addr, &tmp_die);
	if (!sp_die)
		return NULL;

	/* Inlined function could be recursive. Trace it until fail */
	while (sp_die) {
		FUNC1(die_mem, sp_die, sizeof(Dwarf_Die));
		sp_die = FUNC0(sp_die, __die_find_inline_cb, &addr,
					&tmp_die);
	}

	return die_mem;
}