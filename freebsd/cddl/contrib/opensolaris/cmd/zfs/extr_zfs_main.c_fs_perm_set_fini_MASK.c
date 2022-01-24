#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fs_perm_t ;
struct TYPE_9__ {int /*<<< orphan*/  fsps_deleg_perm_avl_pool; int /*<<< orphan*/  fsps_who_perm_avl_pool; int /*<<< orphan*/  fsps_named_set_avl_pool; int /*<<< orphan*/  fsps_list; } ;
typedef  TYPE_1__ fs_perm_set_t ;
struct TYPE_10__ {int /*<<< orphan*/  fspn_fsperm; } ;
typedef  TYPE_2__ fs_perm_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static inline void
FUNC6(fs_perm_set_t *fspset)
{
	fs_perm_node_t *node = FUNC3(fspset->fsps_list);

	while (node != NULL) {
		fs_perm_node_t *next_node =
		    FUNC4(fspset->fsps_list, node);
		fs_perm_t *fsperm = &node->fspn_fsperm;
		FUNC1(fsperm);
		FUNC5(fspset->fsps_list, node);
		FUNC0(node);
		node = next_node;
	}

	FUNC2(fspset->fsps_named_set_avl_pool);
	FUNC2(fspset->fsps_who_perm_avl_pool);
	FUNC2(fspset->fsps_deleg_perm_avl_pool);
}