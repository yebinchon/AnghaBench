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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*,struct inode*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct btrfs_root *root, struct inode *inode,
			  struct bio *bio, u32 *dst)
{
	return FUNC0(root, inode, bio, 0, dst, 0);
}