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
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct btrfs_root*,struct inode*,struct bio*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, int rw,
				    struct bio *bio, int mirror_num,
				    unsigned long bio_flags, u64 offset)
{
	int ret;
	struct btrfs_root *root = FUNC0(inode)->root;
	ret = FUNC2(root, inode, bio, offset, 1);
	FUNC1(ret); /* -ENOMEM */
	return 0;
}