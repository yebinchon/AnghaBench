#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_11__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_12__ {int ip_dyn_features; } ;
struct TYPE_10__ {TYPE_3__* d_inode; } ;
struct TYPE_9__ {TYPE_2__* i_mapping; } ;
struct TYPE_8__ {struct inode* host; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int FUNC1 (int,struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iovec const*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ocfs2_dio_end_io ; 
 int /*<<< orphan*/  ocfs2_direct_IO_get_blocks ; 

__attribute__((used)) static ssize_t FUNC5(int rw,
			       struct kiocb *iocb,
			       const struct iovec *iov,
			       loff_t offset,
			       unsigned long nr_segs)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_path.dentry->d_inode->i_mapping->host;
	int ret;

	FUNC3();

	/*
	 * Fallback to buffered I/O if we see an inode without
	 * extents.
	 */
	if (FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return 0;

	/* Fallback to buffered I/O if we are appending. */
	if (FUNC2(inode) <= offset)
		return 0;

	ret = FUNC1(rw, iocb, inode,
					    inode->i_sb->s_bdev, iov, offset,
					    nr_segs, 
					    ocfs2_direct_IO_get_blocks,
					    ocfs2_dio_end_io);

	FUNC4(ret);
	return ret;
}