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
struct btrfs_root {TYPE_1__* fs_info; int /*<<< orphan*/  dirty_list; scalar_t__ track_dirty; } ;
struct TYPE_2__ {int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  dirty_cowonly_roots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfs_root *root)
{
	FUNC2(&root->fs_info->trans_lock);
	if (root->track_dirty && FUNC1(&root->dirty_list)) {
		FUNC0(&root->dirty_list,
			 &root->fs_info->dirty_cowonly_roots);
	}
	FUNC3(&root->fs_info->trans_lock);
}