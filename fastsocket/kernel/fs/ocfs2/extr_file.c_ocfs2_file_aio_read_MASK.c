#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int /*<<< orphan*/  i_alloc_sem; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_flags; int /*<<< orphan*/  f_vfsmnt; TYPE_3__ f_path; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIOCBQUEUED ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kiocb*,struct iovec const*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct file*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC10 (struct kiocb*,int) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC14(struct kiocb *iocb,
				   const struct iovec *iov,
				   unsigned long nr_segs,
				   loff_t pos)
{
	int ret = 0, rw_level = -1, have_alloc_sem = 0, lock_level = 0;
	struct file *filp = iocb->ki_filp;
	struct inode *inode = filp->f_path.dentry->d_inode;

	FUNC4("(0x%p, %u, '%.*s')\n", filp,
		   (unsigned int)nr_segs,
		   filp->f_path.dentry->d_name.len,
		   filp->f_path.dentry->d_name.name);

	if (!inode) {
		ret = -EINVAL;
		FUNC5(ret);
		goto bail;
	}

	/* 
	 * buffered reads protect themselves in ->readpage().  O_DIRECT reads
	 * need locks to protect pending reads from racing with truncate.
	 */
	if (filp->f_flags & O_DIRECT) {
		FUNC1(&inode->i_alloc_sem);
		have_alloc_sem = 1;

		ret = FUNC11(inode, 0);
		if (ret < 0) {
			FUNC5(ret);
			goto bail;
		}
		rw_level = 0;
		/* communicate with ocfs2_dio_end_io */
		FUNC10(iocb, rw_level);
	}

	/*
	 * We're fine letting folks race truncates and extending
	 * writes with read across the cluster, just like they can
	 * locally. Hence no rw_lock during read.
	 * 
	 * Take and drop the meta data lock to update inode fields
	 * like i_size. This allows the checks down below
	 * generic_file_aio_read() a chance of actually working. 
	 */
	ret = FUNC7(inode, filp->f_vfsmnt, &lock_level);
	if (ret < 0) {
		FUNC5(ret);
		goto bail;
	}
	FUNC8(inode, lock_level);

	ret = FUNC2(iocb, iov, nr_segs, iocb->ki_pos);
	if (ret == -EINVAL)
		FUNC3(0, "generic_file_aio_read returned -EINVAL\n");

	/* buffered aio wouldn't have proper lock coverage today */
	FUNC0(ret == -EIOCBQUEUED && !(filp->f_flags & O_DIRECT));

	/* see ocfs2_file_aio_write */
	if (ret == -EIOCBQUEUED || !FUNC9(iocb)) {
		rw_level = -1;
		have_alloc_sem = 0;
	}

bail:
	if (have_alloc_sem)
		FUNC13(&inode->i_alloc_sem);
	if (rw_level != -1) 
		FUNC12(inode, rw_level);
	FUNC6(ret);

	return ret;
}