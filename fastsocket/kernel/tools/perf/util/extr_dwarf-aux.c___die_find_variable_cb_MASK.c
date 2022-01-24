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
struct __find_variable_param {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DIE_FIND_CB_CONTINUE ; 
 int DIE_FIND_CB_END ; 
 int DIE_FIND_CB_SIBLING ; 
 int DW_TAG_formal_parameter ; 
 int DW_TAG_variable ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Dwarf_Die *die_mem, void *data)
{
	struct __find_variable_param *fvp = data;
	int tag;

	tag = FUNC2(die_mem);
	if ((tag == DW_TAG_formal_parameter ||
	     tag == DW_TAG_variable) &&
	    FUNC0(die_mem, fvp->name))
		return DIE_FIND_CB_END;

	if (FUNC1(die_mem, fvp->addr))
		return DIE_FIND_CB_CONTINUE;
	else
		return DIE_FIND_CB_SIBLING;
}