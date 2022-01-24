#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vfsmount {int dummy; } ;
struct kstat {int blocks; int /*<<< orphan*/  blksize; int /*<<< orphan*/  dev; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  delalloc_bytes; TYPE_3__* root; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_7__ {TYPE_2__ anon_super; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct vfsmount *mnt,
			 struct dentry *dentry, struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	u32 blocksize = inode->i_sb->s_blocksize;

	FUNC2(inode, stat);
	stat->dev = FUNC1(inode)->root->anon_super.s_dev;
	stat->blksize = PAGE_CACHE_SIZE;
	stat->blocks = (FUNC0(FUNC3(inode), blocksize) +
		FUNC0(FUNC1(inode)->delalloc_bytes, blocksize)) >> 9;
	return 0;
}