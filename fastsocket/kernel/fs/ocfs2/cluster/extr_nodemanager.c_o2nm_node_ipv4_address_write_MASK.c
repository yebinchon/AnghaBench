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
struct rb_node {int dummy; } ;
struct o2nm_node {int /*<<< orphan*/  nd_ipv4_address; int /*<<< orphan*/  nd_ip_node; } ;
struct o2nm_cluster {int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_node_ip_tree; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ipv4_addr ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct o2nm_cluster*,int /*<<< orphan*/ ,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int FUNC6 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 struct o2nm_cluster* FUNC7 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct o2nm_node *node,
					    const char *page,
					    size_t count)
{
	struct o2nm_cluster *cluster = FUNC7(node);
	int ret, i;
	struct rb_node **p, *parent;
	unsigned int octets[4];
	__be32 ipv4_addr = 0;

	ret = FUNC6(page, "%3u.%3u.%3u.%3u", &octets[3], &octets[2],
		     &octets[1], &octets[0]);
	if (ret != 4)
		return -EINVAL;

	for (i = 0; i < FUNC0(octets); i++) {
		if (octets[i] > 255)
			return -ERANGE;
		FUNC1(&ipv4_addr, octets[i] << (i * 8));
	}

	ret = 0;
	FUNC8(&cluster->cl_nodes_lock);
	if (FUNC3(cluster, ipv4_addr, &p, &parent))
		ret = -EEXIST;
	else {
		FUNC5(&node->nd_ip_node, parent, p);
		FUNC4(&node->nd_ip_node, &cluster->cl_node_ip_tree);
	}
	FUNC9(&cluster->cl_nodes_lock);
	if (ret)
		return ret;

	FUNC2(&node->nd_ipv4_address, &ipv4_addr, sizeof(ipv4_addr));

	return count;
}