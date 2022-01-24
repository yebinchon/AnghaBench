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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root {scalar_t__ cached; TYPE_1__* free_ino_ctl; int /*<<< orphan*/  cache_wait; } ;
struct TYPE_2__ {scalar_t__ free_space; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 int ENOSPC ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 int FUNC0 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct btrfs_root *root, u64 *objectid)
{
	if (!FUNC2(root, INODE_MAP_CACHE))
		return FUNC0(root, objectid);

again:
	*objectid = FUNC1(root);

	if (*objectid != 0)
		return 0;

	FUNC3(root);

	FUNC4(root->cache_wait,
		   root->cached == BTRFS_CACHE_FINISHED ||
		   root->free_ino_ctl->free_space > 0);

	if (root->cached == BTRFS_CACHE_FINISHED &&
	    root->free_ino_ctl->free_space == 0)
		return -ENOSPC;
	else
		goto again;
}