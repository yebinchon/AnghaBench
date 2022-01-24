#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct variable_list {int /*<<< orphan*/  vars; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  fb_ops; } ;
struct available_var_finder {int nvls; TYPE_1__ pf; scalar_t__ child; struct variable_list* vls; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DIE_FIND_CB_CONTINUE ; 
 int DIE_FIND_CB_SIBLING ; 
 int DW_TAG_formal_parameter ; 
 int DW_TAG_variable ; 
 int MAX_VAR_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(Dwarf_Die *die_mem, void *data)
{
	struct available_var_finder *af = data;
	struct variable_list *vl;
	char buf[MAX_VAR_LEN];
	int tag, ret;

	vl = &af->vls[af->nvls - 1];

	tag = FUNC3(die_mem);
	if (tag == DW_TAG_formal_parameter ||
	    tag == DW_TAG_variable) {
		ret = FUNC0(die_mem, af->pf.addr,
						af->pf.fb_ops, NULL);
		if (ret == 0) {
			ret = FUNC1(die_mem, buf, MAX_VAR_LEN);
			FUNC4("Add new var: %s\n", buf);
			if (ret > 0)
				FUNC5(vl->vars, buf);
		}
	}

	if (af->child && FUNC2(die_mem, af->pf.addr))
		return DIE_FIND_CB_CONTINUE;
	else
		return DIE_FIND_CB_SIBLING;
}