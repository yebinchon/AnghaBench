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
struct btrfs_root {TYPE_1__* fs_info; int /*<<< orphan*/  root_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  dead_roots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct btrfs_root *root)
{
	FUNC1(&root->fs_info->trans_lock);
	FUNC0(&root->root_list, &root->fs_info->dead_roots);
	FUNC2(&root->fs_info->trans_lock);
	return 0;
}