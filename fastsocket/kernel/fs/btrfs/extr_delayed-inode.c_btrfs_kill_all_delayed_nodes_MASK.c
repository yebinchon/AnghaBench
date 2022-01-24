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
typedef  scalar_t__ u64 ;
struct btrfs_root {int /*<<< orphan*/  inode_lock; int /*<<< orphan*/  delayed_nodes_tree; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  refs; scalar_t__ inode_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_delayed_node**) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_delayed_node*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct btrfs_root *root)
{
	u64 inode_id = 0;
	struct btrfs_delayed_node *delayed_nodes[8];
	int i, n;

	while (1) {
		FUNC5(&root->inode_lock);
		n = FUNC4(&root->delayed_nodes_tree,
					   (void **)delayed_nodes, inode_id,
					   FUNC0(delayed_nodes));
		if (!n) {
			FUNC6(&root->inode_lock);
			break;
		}

		inode_id = delayed_nodes[n - 1]->inode_id + 1;

		for (i = 0; i < n; i++)
			FUNC2(&delayed_nodes[i]->refs);
		FUNC6(&root->inode_lock);

		for (i = 0; i < n; i++) {
			FUNC1(delayed_nodes[i]);
			FUNC3(delayed_nodes[i]);
		}
	}
}