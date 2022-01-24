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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  global_block_rsv; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct btrfs_trans_handle *trans,
				  struct btrfs_root *root)
{
	int ret;

	ret = FUNC0(root, &root->fs_info->global_block_rsv, 5);
	return ret ? 1 : 0;
}