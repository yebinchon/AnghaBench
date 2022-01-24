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
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int f_flags; struct dentry* f_dentry; TYPE_1__* f_mapping; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int O_APPEND ; 
 int FUNC2 (struct kiocb*,struct iovec const*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (struct iovec const*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *iocb, const struct iovec *iov,
				   unsigned long nr_segs, loff_t pos)
{
	struct file *file = iocb->ki_filp;
	size_t writesize = FUNC7(iov, nr_segs);
	struct dentry *dentry = file->f_dentry;
	struct gfs2_inode *ip = FUNC0(dentry->d_inode);
	struct gfs2_sbd *sdp;
	int ret;

	sdp = FUNC1(file->f_mapping->host);
	ret = FUNC5(ip);
	if (ret)
		return ret;

	FUNC6(file->f_dentry->d_inode, pos, writesize);
	if (file->f_flags & O_APPEND) {
		struct gfs2_holder gh;

		ret = FUNC4(ip->i_gl, LM_ST_SHARED, 0, &gh);
		if (ret)
			return ret;
		FUNC3(&gh);
	}

	return FUNC2(iocb, iov, nr_segs, pos);
}