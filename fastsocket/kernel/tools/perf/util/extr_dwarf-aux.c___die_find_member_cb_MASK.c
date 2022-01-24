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

/* Variables and functions */
 int DIE_FIND_CB_END ; 
 int DIE_FIND_CB_SIBLING ; 
 scalar_t__ DW_TAG_member ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(Dwarf_Die *die_mem, void *data)
{
	const char *name = data;

	if ((FUNC1(die_mem) == DW_TAG_member) &&
	    FUNC0(die_mem, name))
		return DIE_FIND_CB_END;

	return DIE_FIND_CB_SIBLING;
}