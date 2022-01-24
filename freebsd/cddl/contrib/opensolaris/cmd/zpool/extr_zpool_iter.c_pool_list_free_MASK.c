#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zl_pool; int /*<<< orphan*/  zl_avl; int /*<<< orphan*/  zn_handle; } ;
typedef  TYPE_1__ zpool_node_t ;
typedef  TYPE_1__ zpool_list_t ;
typedef  int /*<<< orphan*/  uu_avl_walk_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_WALK_ROBUST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(zpool_list_t *zlp)
{
	uu_avl_walk_t *walk;
	zpool_node_t *node;

	if ((walk = FUNC9(zlp->zl_avl, UU_WALK_ROBUST)) == NULL) {
		(void) FUNC1(stderr,
		    "%s", FUNC3("internal error: out of memory"));
		FUNC0(1);
	}

	while ((node = FUNC8(walk)) != NULL) {
		FUNC6(zlp->zl_avl, node);
		FUNC10(node->zn_handle);
		FUNC2(node);
	}

	FUNC7(walk);
	FUNC4(zlp->zl_avl);
	FUNC5(zlp->zl_pool);

	FUNC2(zlp);
}