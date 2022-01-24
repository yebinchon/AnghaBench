#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_DEFERRED ; 
 int FUNC1 (int,struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iovec const*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_get_block_direct ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int FUNC6 (struct gfs2_inode*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(int rw, struct kiocb *iocb,
			      const struct iovec *iov, loff_t offset,
			      unsigned long nr_segs)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int rv;

	/*
	 * Deferred lock, even if its a write, since we do no allocation
	 * on this path. All we need change is atime, and this lock mode
	 * ensures that other nodes have flushed their buffered read caches
	 * (i.e. their page cache entries for this inode). We do not,
	 * unfortunately have the option of only flushing a range like
	 * the VFS does.
	 */
	FUNC4(ip->i_gl, LM_ST_DEFERRED, 0, &gh);
	rv = FUNC3(&gh);
	if (rv)
		return rv;
	rv = FUNC6(ip, rw, offset);
	if (rv != 1)
		goto out; /* dio not valid, fall back to buffered i/o */

	rv = FUNC1(rw, iocb, inode, inode->i_sb->s_bdev,
					   iov, offset, nr_segs,
					   gfs2_get_block_direct, NULL);
out:
	FUNC2(&gh);
	FUNC5(&gh);
	return rv;
}