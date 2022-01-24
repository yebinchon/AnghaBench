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
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_free_blk; } ;
struct ocfs2_dir_block_trailer {int /*<<< orphan*/  db_free_next; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ocfs2_dir_block_trailer* FUNC5 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, handle_t *handle,
				     struct buffer_head *dx_root_bh,
				     struct buffer_head *dirdata_bh)
{
	int ret;
	struct ocfs2_dx_root_block *dx_root;
	struct ocfs2_dir_block_trailer *trailer;

	ret = FUNC3(handle, FUNC0(dir), dx_root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC2(ret);
		goto out;
	}
	trailer = FUNC5(dirdata_bh, dir->i_sb);
	dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

	trailer->db_free_next = dx_root->dr_free_blk;
	dx_root->dr_free_blk = FUNC1(dirdata_bh->b_blocknr);

	FUNC4(handle, dx_root_bh);

out:
	return ret;
}