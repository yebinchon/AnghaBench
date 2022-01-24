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
struct ocfs2_dir_lookup_result {struct buffer_head* dl_leaf_bh; struct buffer_head* dl_prev_leaf_bh; struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dir_block_trailer {int /*<<< orphan*/  db_free_next; int /*<<< orphan*/  db_free_rec_len; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ocfs2_dir_block_trailer* FUNC4 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *dir,
				       handle_t *handle,
				       struct ocfs2_dir_lookup_result *lookup)
{
	struct ocfs2_dir_block_trailer *trailer, *prev;
	struct ocfs2_dx_root_block *dx_root;
	struct buffer_head *bh;

	trailer = FUNC4(lookup->dl_leaf_bh, dir->i_sb);

	if (FUNC2(lookup)) {
		bh = lookup->dl_dx_root_bh;
		dx_root = (struct ocfs2_dx_root_block *)bh->b_data;
		dx_root->dr_free_blk = trailer->db_free_next;
	} else {
		bh = lookup->dl_prev_leaf_bh;
		prev = FUNC4(bh, dir->i_sb);
		prev->db_free_next = trailer->db_free_next;
	}

	trailer->db_free_rec_len = FUNC0(0);
	trailer->db_free_next = FUNC1(0);

	FUNC3(handle, bh);
	FUNC3(handle, lookup->dl_leaf_bh);
}