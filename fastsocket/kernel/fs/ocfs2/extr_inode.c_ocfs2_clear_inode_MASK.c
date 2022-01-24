#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_inode_info {unsigned long long ip_blkno; int ip_flags; int /*<<< orphan*/  ip_jinode; scalar_t__ ip_dir_start_lookup; int /*<<< orphan*/  ip_open_count; int /*<<< orphan*/  ip_alloc_sem; int /*<<< orphan*/  ip_io_mutex; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_open_lockres; int /*<<< orphan*/  ip_inode_lockres; int /*<<< orphan*/  ip_rw_lockres; int /*<<< orphan*/  ip_io_markers; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_7__ {TYPE_1__* journal; } ;
struct TYPE_6__ {int ci_flags; int /*<<< orphan*/  ci_num_cached; } ;
struct TYPE_5__ {int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int OCFS2_CACHE_FL_INLINE ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

void FUNC22(struct inode *inode)
{
	int status;
	struct ocfs2_inode_info *oi = FUNC1(inode);

	FUNC8();

	if (!inode)
		goto bail;

	FUNC6(0, "Clearing inode: %llu, nlink = %u\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno, inode->i_nlink);

	FUNC7(FUNC2(inode->i_sb) == NULL,
			"Inode=%lu\n", inode->i_ino);

	/* To preven remote deletes we hold open lock before, now it
	 * is time to unlock PR and EX open locks. */
	FUNC19(inode);

	/* Do these before all the other work so that we don't bounce
	 * the downconvert thread while waiting to destroy the locks. */
	FUNC17(&oi->ip_rw_lockres);
	FUNC17(&oi->ip_inode_lockres);
	FUNC17(&oi->ip_open_lockres);

	/* We very well may get a clear_inode before all an inodes
	 * metadata has hit disk. Of course, we can't drop any cluster
	 * locks until the journal has finished with it. The only
	 * exception here are successfully wiped inodes - their
	 * metadata can now be considered to be part of the system
	 * inodes from which it came. */
	if (!(FUNC1(inode)->ip_flags & OCFS2_INODE_DELETED))
		FUNC13(inode);

	FUNC7(!FUNC5(&oi->ip_io_markers),
			"Clear inode of %llu, inode has io markers\n",
			(unsigned long long)oi->ip_blkno);

	FUNC15(inode, 0);

	status = FUNC14(inode);
	if (status < 0)
		FUNC9(status);

	FUNC16(&oi->ip_rw_lockres);
	FUNC16(&oi->ip_inode_lockres);
	FUNC16(&oi->ip_open_lockres);

	FUNC18(FUNC0(inode));

	FUNC7(FUNC0(inode)->ci_num_cached,
			"Clear inode of %llu, inode has %u cache items\n",
			(unsigned long long)oi->ip_blkno,
			FUNC0(inode)->ci_num_cached);

	FUNC7(!(FUNC0(inode)->ci_flags & OCFS2_CACHE_FL_INLINE),
			"Clear inode of %llu, inode has a bad flag\n",
			(unsigned long long)oi->ip_blkno);

	FUNC7(FUNC20(&oi->ip_lock),
			"Clear inode of %llu, inode is locked\n",
			(unsigned long long)oi->ip_blkno);

	FUNC7(!FUNC11(&oi->ip_io_mutex),
			"Clear inode of %llu, io_mutex is locked\n",
			(unsigned long long)oi->ip_blkno);
	FUNC12(&oi->ip_io_mutex);

	/*
	 * down_trylock() returns 0, down_write_trylock() returns 1
	 * kernel 1, world 0
	 */
	FUNC7(!FUNC3(&oi->ip_alloc_sem),
			"Clear inode of %llu, alloc_sem is locked\n",
			(unsigned long long)oi->ip_blkno);
	FUNC21(&oi->ip_alloc_sem);

	FUNC7(oi->ip_open_count,
			"Clear inode of %llu has open count %d\n",
			(unsigned long long)oi->ip_blkno, oi->ip_open_count);

	/* Clear all other flags. */
	oi->ip_flags = 0;
	oi->ip_dir_start_lookup = 0;
	oi->ip_blkno = 0ULL;

	/*
	 * ip_jinode is used to track txns against this inode. We ensure that
	 * the journal is flushed before journal shutdown. Thus it is safe to
	 * have inodes get cleaned up after journal shutdown.
	 */
	FUNC4(FUNC2(inode->i_sb)->journal->j_journal,
				       &oi->ip_jinode);

bail:
	FUNC10();
}