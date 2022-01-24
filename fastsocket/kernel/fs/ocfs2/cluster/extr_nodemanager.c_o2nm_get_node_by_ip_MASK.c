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
struct o2nm_node {int /*<<< orphan*/  nd_item; } ;
struct o2nm_cluster {int /*<<< orphan*/  cl_nodes_lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct o2nm_node* FUNC1 (struct o2nm_cluster*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* o2nm_single_cluster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct o2nm_node *FUNC4(__be32 addr)
{
	struct o2nm_node *node = NULL;
	struct o2nm_cluster *cluster = o2nm_single_cluster;

	if (cluster == NULL)
		goto out;

	FUNC2(&cluster->cl_nodes_lock);
	node = FUNC1(cluster, addr, NULL, NULL);
	if (node)
		FUNC0(&node->nd_item);
	FUNC3(&cluster->cl_nodes_lock);

out:
	return node;
}