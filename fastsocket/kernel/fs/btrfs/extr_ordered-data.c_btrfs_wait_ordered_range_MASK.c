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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct btrfs_ordered_extent {scalar_t__ file_offset; scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_ASYNC_EXTENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct btrfs_ordered_extent* FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct btrfs_ordered_extent*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  loff_t ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct inode *inode, u64 start, u64 len)
{
	u64 end;
	u64 orig_end;
	struct btrfs_ordered_extent *ordered;
	int found;

	if (start + len < start) {
		orig_end = FUNC1(loff_t);
	} else {
		orig_end = start + len - 1;
		if (orig_end > FUNC1(loff_t))
			orig_end = FUNC1(loff_t);
	}

	/* start IO across the range first to instantiate any delalloc
	 * extents
	 */
	FUNC6(inode->i_mapping, start, orig_end);

	/*
	 * So with compression we will find and lock a dirty page and clear the
	 * first one as dirty, setup an async extent, and immediately return
	 * with the entire range locked but with nobody actually marked with
	 * writeback.  So we can't just filemap_write_and_wait_range() and
	 * expect it to work since it will just kick off a thread to do the
	 * actual work.  So we need to call filemap_fdatawrite_range _again_
	 * since it will wait on the page lock, which won't be unlocked until
	 * after the pages have been marked as writeback and so we're good to go
	 * from there.  We have to do this otherwise we'll miss the ordered
	 * extents and that results in badness.  Please Josef, do not think you
	 * know better and pull this out at some point in the future, it is
	 * right and you are wrong.
	 */
	if (FUNC7(BTRFS_INODE_HAS_ASYNC_EXTENT,
		     &FUNC0(inode)->runtime_flags))
		FUNC6(inode->i_mapping, start, orig_end);

	FUNC5(inode->i_mapping, start, orig_end);

	end = orig_end;
	found = 0;
	while (1) {
		ordered = FUNC2(inode, end);
		if (!ordered)
			break;
		if (ordered->file_offset > orig_end) {
			FUNC3(ordered);
			break;
		}
		if (ordered->file_offset + ordered->len < start) {
			FUNC3(ordered);
			break;
		}
		found++;
		FUNC4(inode, ordered, 1);
		end = ordered->file_offset;
		FUNC3(ordered);
		if (end == 0 || end == start)
			break;
		end--;
	}
}