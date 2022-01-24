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
struct o2nm_node {unsigned long nd_num; int /*<<< orphan*/  nd_set_attributes; } ;
struct o2nm_cluster {int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_nodes_bitmap; struct o2nm_node** cl_nodes; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EEXIST ; 
 size_t EINVAL ; 
 size_t ERANGE ; 
 unsigned long O2NM_MAX_NODES ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_ADDRESS ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_PORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* FUNC3 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct o2nm_node *node, const char *page,
				   size_t count)
{
	struct o2nm_cluster *cluster = FUNC3(node);
	unsigned long tmp;
	char *p = (char *)page;

	tmp = FUNC1(p, &p, 0);
	if (!p || (*p && (*p != '\n')))
		return -EINVAL;

	if (tmp >= O2NM_MAX_NODES)
		return -ERANGE;

	/* once we're in the cl_nodes tree networking can look us up by
	 * node number and try to use our address and port attributes
	 * to connect to this node.. make sure that they've been set
	 * before writing the node attribute? */
	if (!FUNC2(O2NM_NODE_ATTR_ADDRESS, &node->nd_set_attributes) ||
	    !FUNC2(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
		return -EINVAL; /* XXX */

	FUNC4(&cluster->cl_nodes_lock);
	if (cluster->cl_nodes[tmp])
		p = NULL;
	else  {
		cluster->cl_nodes[tmp] = node;
		node->nd_num = tmp;
		FUNC0(tmp, cluster->cl_nodes_bitmap);
	}
	FUNC5(&cluster->cl_nodes_lock);
	if (p == NULL)
		return -EEXIST;

	return count;
}