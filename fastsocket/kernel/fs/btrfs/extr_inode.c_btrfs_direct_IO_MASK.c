#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_3__* f_mapping; } ;
struct extent_state {int dummy; } ;
struct btrfs_ordered_extent {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;
struct TYPE_11__ {int /*<<< orphan*/  io_tree; TYPE_5__* root; } ;
struct TYPE_10__ {TYPE_2__* fs_info; } ;
struct TYPE_9__ {struct inode* host; } ;
struct TYPE_8__ {TYPE_1__* fs_devices; } ;
struct TYPE_7__ {int /*<<< orphan*/  latest_bdev; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct inode*) ; 
 size_t EBUSY ; 
 size_t EIOCBQUEUED ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DO_ACCOUNTING ; 
 int EXTENT_LOCKED ; 
 int /*<<< orphan*/  EXTENT_UPTODATE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t PAGE_CACHE_SHIFT ; 
 int WRITE ; 
 size_t FUNC1 (int,struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iovec const*,size_t,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct inode*,size_t) ; 
 int /*<<< orphan*/  btrfs_get_blocks_direct ; 
 struct btrfs_ordered_extent* FUNC3 (struct inode*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct btrfs_ordered_extent*,int) ; 
 int /*<<< orphan*/  btrfs_submit_direct ; 
 scalar_t__ FUNC6 (TYPE_5__*,int,struct kiocb*,struct iovec const*,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,size_t,int,int,int /*<<< orphan*/ ,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 size_t FUNC9 (TYPE_3__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_state*) ; 
 size_t FUNC11 (TYPE_3__*,size_t,size_t) ; 
 size_t FUNC12 (struct iovec const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,struct extent_state**) ; 
 size_t FUNC14 (int /*<<< orphan*/ *,size_t,size_t,int,int /*<<< orphan*/ *,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_state*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,size_t,size_t,struct extent_state**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC17(int rw, struct kiocb *iocb,
			const struct iovec *iov, loff_t offset,
			unsigned long nr_segs)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct btrfs_ordered_extent *ordered;
	struct extent_state *cached_state = NULL;
	u64 lockstart, lockend;
	ssize_t ret;
	int writing = rw & WRITE;
	int write_bits = 0;
	size_t count = FUNC12(iov, nr_segs);

	if (FUNC6(FUNC0(inode)->root, rw, iocb, iov,
			    offset, nr_segs)) {
		return 0;
	}

	lockstart = offset;
	lockend = offset + count - 1;

	if (writing) {
		ret = FUNC2(inode, count);
		if (ret)
			goto out;
	}

	while (1) {
		FUNC13(&FUNC0(inode)->io_tree, lockstart, lockend,
				 0, &cached_state);
		/*
		 * We're concerned with the entire range that we're going to be
		 * doing DIO to, so we need to make sure theres no ordered
		 * extents in this range.
		 */
		ordered = FUNC3(inode, lockstart,
						     lockend - lockstart + 1);

		/*
		 * We need to make sure there are no buffered pages in this
		 * range either, we could have raced between the invalidate in
		 * generic_file_direct_write and locking the extent.  The
		 * invalidate needs to happen so that reads after a write do not
		 * get stale data.
		 */
		if (!ordered && (!writing ||
		    !FUNC15(&FUNC0(inode)->io_tree,
				    lockstart, lockend, EXTENT_UPTODATE, 0,
				    cached_state)))
			break;

		FUNC16(&FUNC0(inode)->io_tree, lockstart, lockend,
				     &cached_state, GFP_NOFS);

		if (ordered) {
			FUNC5(inode, ordered, 1);
			FUNC4(ordered);
		} else {
			/* Screw you mmap */
			ret = FUNC9(file->f_mapping,
							   lockstart,
							   lockend);
			if (ret)
				goto out;

			/*
			 * If we found a page that couldn't be invalidated just
			 * fall back to buffered.
			 */
			ret = FUNC11(file->f_mapping,
					lockstart >> PAGE_CACHE_SHIFT,
					lockend >> PAGE_CACHE_SHIFT);
			if (ret) {
				if (ret == -EBUSY)
					ret = 0;
				goto out;
			}
		}

		FUNC8();
	}

	/*
	 * we don't use btrfs_set_extent_delalloc because we don't want
	 * the dirty or uptodate bits
	 */
	if (writing) {
		write_bits = EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING;
		ret = FUNC14(&FUNC0(inode)->io_tree, lockstart, lockend,
				     EXTENT_DELALLOC, NULL, &cached_state,
				     GFP_NOFS);
		if (ret) {
			FUNC7(&FUNC0(inode)->io_tree, lockstart,
					 lockend, EXTENT_LOCKED | write_bits,
					 1, 0, &cached_state, GFP_NOFS);
			goto out;
		}
	}

	FUNC10(cached_state);
	cached_state = NULL;

	ret = FUNC1(rw, iocb, inode,
		   FUNC0(inode)->root->fs_info->fs_devices->latest_bdev,
		   iov, offset, nr_segs, btrfs_get_blocks_direct, NULL,
		   btrfs_submit_direct, 0);

	if (ret < 0 && ret != -EIOCBQUEUED) {
		FUNC7(&FUNC0(inode)->io_tree, offset,
			      offset + FUNC12(iov, nr_segs) - 1,
			      EXTENT_LOCKED | write_bits, 1, 0,
			      &cached_state, GFP_NOFS);
	} else if (ret >= 0 && ret < FUNC12(iov, nr_segs)) {
		/*
		 * We're falling back to buffered, unlock the section we didn't
		 * do IO on.
		 */
		FUNC7(&FUNC0(inode)->io_tree, offset + ret,
			      offset + FUNC12(iov, nr_segs) - 1,
			      EXTENT_LOCKED | write_bits, 1, 0,
			      &cached_state, GFP_NOFS);
	}
out:
	FUNC10(cached_state);
	return ret;
}