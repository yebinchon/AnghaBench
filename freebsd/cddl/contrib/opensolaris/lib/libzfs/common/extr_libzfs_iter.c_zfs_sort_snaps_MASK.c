#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* zn_handle; } ;
typedef  TYPE_1__ zfs_node_t ;
struct TYPE_12__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(zfs_handle_t *zhp, void *data)
{
	avl_tree_t *avl = data;
	zfs_node_t *node;
	zfs_node_t search;

	search.zn_handle = zhp;
	node = FUNC1(avl, &search, NULL);
	if (node) {
		/*
		 * If this snapshot was renamed while we were creating the
		 * AVL tree, it's possible that we already inserted it under
		 * its old name. Remove the old handle before adding the new
		 * one.
		 */
		FUNC5(node->zn_handle);
		FUNC2(avl, node);
		FUNC3(node);
	}

	node = FUNC4(zhp->zfs_hdl, sizeof (zfs_node_t));
	node->zn_handle = zhp;
	FUNC0(avl, node);

	return (0);
}