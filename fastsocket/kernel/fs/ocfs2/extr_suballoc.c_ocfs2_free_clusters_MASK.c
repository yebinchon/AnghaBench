#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  unsigned long long u16 ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__,scalar_t__*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,unsigned long long,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC11(handle_t *handle,
		       struct inode *bitmap_inode,
		       struct buffer_head *bitmap_bh,
		       u64 start_blk,
		       unsigned int num_clusters)
{
	int status;
	u16 bg_start_bit;
	u64 bg_blkno;
	struct ocfs2_dinode *fe;

	/* You can't ever have a contiguous set of clusters
	 * bigger than a block group bitmap so we never have to worry
	 * about looping on them. */

	FUNC3();

	/* This is expensive. We can safely remove once this stuff has
	 * gotten tested really well. */
	FUNC0(start_blk != FUNC8(bitmap_inode->i_sb, FUNC7(bitmap_inode->i_sb, start_blk)));

	fe = (struct ocfs2_dinode *) bitmap_bh->b_data;

	FUNC6(bitmap_inode, start_blk, &bg_blkno,
				     &bg_start_bit);

	FUNC2(0, "want to free %u clusters starting at block %llu\n",
	     num_clusters, (unsigned long long)start_blk);
	FUNC2(0, "bg_blkno = %llu, bg_start_bit = %u\n",
	     (unsigned long long)bg_blkno, bg_start_bit);

	status = FUNC9(handle, bitmap_inode, bitmap_bh,
					  bg_start_bit, bg_blkno,
					  num_clusters);
	if (status < 0) {
		FUNC4(status);
		goto out;
	}

	FUNC10(FUNC1(bitmap_inode->i_sb),
					 num_clusters);

out:
	FUNC5(status);
	return status;
}