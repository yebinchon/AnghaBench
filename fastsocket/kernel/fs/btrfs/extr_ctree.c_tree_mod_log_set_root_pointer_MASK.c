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
struct extent_buffer {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  node; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct btrfs_root *root,
			      struct extent_buffer *new_root_node)
{
	int ret;
	FUNC1(root->fs_info, root->node);
	ret = FUNC2(root->fs_info, root->node,
				       new_root_node, GFP_NOFS);
	FUNC0(ret < 0);
}