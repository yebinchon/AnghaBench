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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct hstate {scalar_t__ order; int /*<<< orphan*/  max_huge_pages; scalar_t__* nr_huge_pages_node; scalar_t__ nr_huge_pages; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int GFP_KERNEL ; 
 scalar_t__ MAX_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NUMA_NO_NODE ; 
 size_t N_HIGH_MEMORY ; 
 int __GFP_NORETRY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct hstate* FUNC4 (struct kobject*,int*) ; 
 int /*<<< orphan*/ * node_states ; 
 int /*<<< orphan*/  nodemask_t ; 
 int /*<<< orphan*/ * nodes_allowed ; 
 int /*<<< orphan*/  FUNC5 (struct hstate*,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC7(bool obey_mempolicy,
			struct kobject *kobj, struct kobj_attribute *attr,
			const char *buf, size_t len)
{
	int err;
	int nid;
	unsigned long count;
	struct hstate *h;
	FUNC0(nodemask_t, nodes_allowed, GFP_KERNEL | __GFP_NORETRY);

	err = FUNC6(buf, 10, &count);
	if (err)
		goto out;

	h = FUNC4(kobj, &nid);
	if (h->order >= MAX_ORDER) {
		err = -EINVAL;
		goto out;
	}

	if (nid == NUMA_NO_NODE) {
		/*
		 * global hstate attribute
		 */
		if (!(obey_mempolicy &&
				FUNC2(nodes_allowed))) {
			FUNC1(nodes_allowed);
			nodes_allowed = &node_states[N_HIGH_MEMORY];
		}
	} else if (nodes_allowed) {
		/*
		 * per node hstate attribute: adjust count to global,
		 * but restrict alloc/free to the specified node.
		 */
		count += h->nr_huge_pages - h->nr_huge_pages_node[nid];
		FUNC3(nodes_allowed, nid);
	} else
		nodes_allowed = &node_states[N_HIGH_MEMORY];

	h->max_huge_pages = FUNC5(h, count, nodes_allowed);

	if (nodes_allowed != &node_states[N_HIGH_MEMORY])
		FUNC1(nodes_allowed);

	return len;
out:
	FUNC1(nodes_allowed);
	return err;
}