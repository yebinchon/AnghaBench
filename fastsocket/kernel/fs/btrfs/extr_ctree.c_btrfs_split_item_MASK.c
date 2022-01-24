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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_item {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,unsigned long) ; 

int FUNC2(struct btrfs_trans_handle *trans,
		     struct btrfs_root *root,
		     struct btrfs_path *path,
		     struct btrfs_key *new_key,
		     unsigned long split_offset)
{
	int ret;
	ret = FUNC0(trans, root, path,
				   sizeof(struct btrfs_item));
	if (ret)
		return ret;

	ret = FUNC1(trans, root, path, new_key, split_offset);
	return ret;
}