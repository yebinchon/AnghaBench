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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  force_compress; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_COMPRESS ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_ASYNC_EXTENT ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_INODE_PREALLOC ; 
 int /*<<< orphan*/  COMPRESS ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned long*,int) ; 
 int FUNC3 (struct inode*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned long*) ; 
 int FUNC4 (struct inode*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct page *locked_page,
			      u64 start, u64 end, int *page_started,
			      unsigned long *nr_written)
{
	int ret;
	struct btrfs_root *root = FUNC0(inode)->root;

	if (FUNC0(inode)->flags & BTRFS_INODE_NODATACOW) {
		ret = FUNC4(inode, locked_page, start, end,
					 page_started, 1, nr_written);
	} else if (FUNC0(inode)->flags & BTRFS_INODE_PREALLOC) {
		ret = FUNC4(inode, locked_page, start, end,
					 page_started, 0, nr_written);
	} else if (!FUNC1(root, COMPRESS) &&
		   !(FUNC0(inode)->force_compress) &&
		   !(FUNC0(inode)->flags & BTRFS_INODE_COMPRESS)) {
		ret = FUNC2(inode, locked_page, start, end,
				      page_started, nr_written, 1);
	} else {
		FUNC5(BTRFS_INODE_HAS_ASYNC_EXTENT,
			&FUNC0(inode)->runtime_flags);
		ret = FUNC3(inode, locked_page, start, end,
					   page_started, nr_written);
	}
	return ret;
}