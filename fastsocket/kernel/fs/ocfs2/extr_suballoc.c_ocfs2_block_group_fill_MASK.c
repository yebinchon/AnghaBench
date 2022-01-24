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
typedef  unsigned long long u64 ;
typedef  size_t u16 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_group_desc {void* bg_bits; void* bg_free_bits_count; scalar_t__ bg_bitmap; void* bg_blkno; void* bg_parent_dinode; int /*<<< orphan*/  bg_next_group; void* bg_chain; void* bg_size; int /*<<< orphan*/  bg_generation; int /*<<< orphan*/  bg_signature; } ;
struct ocfs2_chain_list {TYPE_1__* cl_recs; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {unsigned long long ip_blkno; } ;
struct TYPE_5__ {int /*<<< orphan*/  fs_generation; } ;
struct TYPE_4__ {int /*<<< orphan*/  c_blkno; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_GROUP_DESC_SIGNATURE ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (unsigned long long) ; 
 size_t FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_group_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 size_t FUNC11 (struct ocfs2_chain_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,unsigned long long,unsigned long long) ; 
 size_t FUNC13 (struct super_block*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
				  struct inode *alloc_inode,
				  struct buffer_head *bg_bh,
				  u64 group_blkno,
				  u16 my_chain,
				  struct ocfs2_chain_list *cl)
{
	int status = 0;
	struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;
	struct super_block * sb = alloc_inode->i_sb;

	FUNC8();

	if (((unsigned long long) bg_bh->b_blocknr) != group_blkno) {
		FUNC12(alloc_inode->i_sb, "group block (%llu) != "
			    "b_blocknr (%llu)",
			    (unsigned long long)group_blkno,
			    (unsigned long long) bg_bh->b_blocknr);
		status = -EIO;
		goto bail;
	}

	status = FUNC14(handle,
					 FUNC0(alloc_inode),
					 bg_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC9(status);
		goto bail;
	}

	FUNC7(bg, 0, sb->s_blocksize);
	FUNC17(bg->bg_signature, OCFS2_GROUP_DESC_SIGNATURE);
	bg->bg_generation = FUNC4(FUNC2(sb)->fs_generation);
	bg->bg_size = FUNC3(FUNC13(sb));
	bg->bg_bits = FUNC3(FUNC11(cl));
	bg->bg_chain = FUNC3(my_chain);
	bg->bg_next_group = cl->cl_recs[my_chain].c_blkno;
	bg->bg_parent_dinode = FUNC5(FUNC1(alloc_inode)->ip_blkno);
	bg->bg_blkno = FUNC5(group_blkno);
	/* set the 1st bit in the bitmap to account for the descriptor block */
	FUNC16(0, (unsigned long *)bg->bg_bitmap);
	bg->bg_free_bits_count = FUNC3(FUNC6(bg->bg_bits) - 1);

	status = FUNC15(handle, bg_bh);
	if (status < 0)
		FUNC9(status);

	/* There is no need to zero out or otherwise initialize the
	 * other blocks in a group - All valid FS metadata in a block
	 * group stores the superblock fs_generation value at
	 * allocation time. */

bail:
	FUNC10(status);
	return status;
}