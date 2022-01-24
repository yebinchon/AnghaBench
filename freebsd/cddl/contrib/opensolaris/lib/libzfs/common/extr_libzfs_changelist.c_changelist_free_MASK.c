#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cl_pool; scalar_t__ cl_list; int /*<<< orphan*/  cn_handle; } ;
typedef  TYPE_1__ prop_changenode_t ;
typedef  TYPE_1__ prop_changelist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (scalar_t__,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(prop_changelist_t *clp)
{
	prop_changenode_t *cn;
	void *cookie;

	if (clp->cl_list) {
		cookie = NULL;
		while ((cn = FUNC3(clp->cl_list, &cookie)) != NULL) {
			FUNC4(cn->cn_handle);
			FUNC0(cn);
		}

		FUNC1(clp->cl_list);
	}
	if (clp->cl_pool)
		FUNC2(clp->cl_pool);

	FUNC0(clp);
}