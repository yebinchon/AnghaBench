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
struct o2nm_node {size_t nd_num; int /*<<< orphan*/  nd_ip_node; scalar_t__ nd_ipv4_address; } ;
struct o2nm_cluster {size_t cl_local_node; int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_nodes_bitmap; struct o2nm_node** cl_nodes; int /*<<< orphan*/  cl_node_ip_tree; scalar_t__ cl_has_local; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_parent; } ;
struct config_group {TYPE_1__ cg_item; } ;

/* Variables and functions */
 size_t O2NM_INVALID_NODE_NUM ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* FUNC5 (int /*<<< orphan*/ ) ; 
 struct o2nm_node* FUNC6 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct config_group *group,
				      struct config_item *item)
{
	struct o2nm_node *node = FUNC6(item);
	struct o2nm_cluster *cluster = FUNC5(group->cg_item.ci_parent);

	FUNC2(node);

	if (cluster->cl_has_local &&
	    (cluster->cl_local_node == node->nd_num)) {
		cluster->cl_has_local = 0;
		cluster->cl_local_node = O2NM_INVALID_NODE_NUM;
		FUNC3(node);
	}

	/* XXX call into net to stop this node from trading messages */

	FUNC7(&cluster->cl_nodes_lock);

	/* XXX sloppy */
	if (node->nd_ipv4_address)
		FUNC4(&node->nd_ip_node, &cluster->cl_node_ip_tree);

	/* nd_num might be 0 if the node number hasn't been set.. */
	if (cluster->cl_nodes[node->nd_num] == node) {
		cluster->cl_nodes[node->nd_num] = NULL;
		FUNC0(node->nd_num, cluster->cl_nodes_bitmap);
	}
	FUNC8(&cluster->cl_nodes_lock);

	FUNC1(item);
}