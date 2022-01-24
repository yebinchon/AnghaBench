#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ocfs2_super {TYPE_3__* journal; } ;
struct kiocb {scalar_t__ ki_pos; int /*<<< orphan*/  ki_left; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_alloc_sem; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {TYPE_4__* dentry; } ;
struct file {int f_flags; int /*<<< orphan*/  f_mapping; TYPE_2__ f_path; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_10__ {scalar_t__ ip_clusters; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_9__ {TYPE_1__ d_name; struct inode* d_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIOCBQUEUED ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int O_APPEND ; 
 int O_DIRECT ; 
 int O_SYNC ; 
 int /*<<< orphan*/  SB_FREEZE_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERIFY_READ ; 
 int FUNC5 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct kiocb*,struct iovec const*,unsigned long*,scalar_t__,scalar_t__*,size_t,size_t) ; 
 int FUNC10 (struct iovec const*,unsigned long*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct file*,scalar_t__*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct file*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC20 (struct kiocb*,int) ; 
 int FUNC21 (TYPE_4__*,scalar_t__*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC22 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC27(struct kiocb *iocb,
				    const struct iovec *iov,
				    unsigned long nr_segs,
				    loff_t pos)
{
	int ret, direct_io, appending, rw_level, have_alloc_sem  = 0;
	int can_do_direct;
	ssize_t written = 0;
	size_t ocount;		/* original count */
	size_t count;		/* after file limit checks */
	loff_t old_size, *ppos = &iocb->ki_pos;
	u32 old_clusters;
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_path.dentry->d_inode;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);

	FUNC14("(0x%p, %u, '%.*s')\n", file,
		   (unsigned int)nr_segs,
		   file->f_path.dentry->d_name.len,
		   file->f_path.dentry->d_name.name);

	if (iocb->ki_left == 0)
		return 0;

	FUNC25(inode->i_sb, SB_FREEZE_WRITE);

	appending = file->f_flags & O_APPEND ? 1 : 0;
	direct_io = file->f_flags & O_DIRECT ? 1 : 0;

	FUNC17(&inode->i_mutex);

relock:
	/* to match setattr's i_mutex -> i_alloc_sem -> rw_lock ordering */
	if (direct_io) {
		FUNC6(&inode->i_alloc_sem);
		have_alloc_sem = 1;
	}

	/* concurrent O_DIRECT writes are allowed */
	rw_level = !direct_io;
	ret = FUNC22(inode, rw_level);
	if (ret < 0) {
		FUNC15(ret);
		goto out_sems;
	}

	can_do_direct = direct_io;
	ret = FUNC21(file->f_path.dentry, ppos,
					    iocb->ki_left, appending,
					    &can_do_direct);
	if (ret < 0) {
		FUNC15(ret);
		goto out;
	}

	/*
	 * We can't complete the direct I/O as requested, fall back to
	 * buffered I/O.
	 */
	if (direct_io && !can_do_direct) {
		FUNC23(inode, rw_level);
		FUNC24(&inode->i_alloc_sem);

		have_alloc_sem = 0;
		rw_level = -1;

		direct_io = 0;
		goto relock;
	}

	/*
	 * To later detect whether a journal commit for sync writes is
	 * necessary, we sample i_size, and cluster count here.
	 */
	old_size = FUNC12(inode);
	old_clusters = FUNC2(inode)->ip_clusters;

	/* communicate with ocfs2_dio_end_io */
	FUNC20(iocb, rw_level);

	if (direct_io) {
		ret = FUNC10(iov, &nr_segs, &ocount,
					     VERIFY_READ);
		if (ret)
			goto out_dio;

		count = ocount;
		ret = FUNC11(file, ppos, &count,
					   FUNC4(inode->i_mode));
		if (ret)
			goto out_dio;

		written = FUNC9(iocb, iov, &nr_segs, *ppos,
						    ppos, count, ocount);
		if (written < 0) {
			/*
			 * direct write may have instantiated a few
			 * blocks outside i_size. Trim these off again.
			 * Don't need i_size_read because we hold i_mutex.
			 */
			if (*ppos + count > inode->i_size)
				FUNC26(inode, inode->i_size);
			ret = written;
			goto out_dio;
		}
	} else {
		written = FUNC5(iocb, iov, nr_segs, ppos);
	}

out_dio:
	/* buffered aio wouldn't have proper lock coverage today */
	FUNC0(ret == -EIOCBQUEUED && !(file->f_flags & O_DIRECT));

	if ((file->f_flags & O_SYNC && !direct_io) || FUNC1(inode)) {
		ret = FUNC8(file->f_mapping, pos,
					       pos + count - 1);
		if (ret < 0)
			written = ret;

		if (!ret && (old_size != FUNC12(inode) ||
		    old_clusters != FUNC2(inode)->ip_clusters)) {
			ret = FUNC13(osb->journal->j_journal);
			if (ret < 0)
				written = ret;
		}

		if (!ret)
			ret = FUNC7(file->f_mapping, pos,
						      pos + count - 1);
	}

	/* 
	 * deep in g_f_a_w_n()->ocfs2_direct_IO we pass in a ocfs2_dio_end_io
	 * function pointer which is called when o_direct io completes so that
	 * it can unlock our rw lock.  (it's the clustered equivalent of
	 * i_alloc_sem; protects truncate from racing with pending ios).
	 * Unfortunately there are error cases which call end_io and others
	 * that don't.  so we don't have to unlock the rw_lock if either an
	 * async dio is going to do it in the future or an end_io after an
	 * error has already done it.
	 */
	if (ret == -EIOCBQUEUED || !FUNC19(iocb)) {
		rw_level = -1;
		have_alloc_sem = 0;
	}

out:
	if (rw_level != -1)
		FUNC23(inode, rw_level);

out_sems:
	if (have_alloc_sem)
		FUNC24(&inode->i_alloc_sem);

	FUNC18(&inode->i_mutex);

	if (written)
		ret = written;
	FUNC16(ret);
	return ret;
}