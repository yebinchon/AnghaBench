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
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_ioctl_trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*) ; 

void FUNC2(struct btrfs_root *root)
{
	if (!FUNC0(&root->fs_info->open_ioctl_trans))
		FUNC1(root);
}