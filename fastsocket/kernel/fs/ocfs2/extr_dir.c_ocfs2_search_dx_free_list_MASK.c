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
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_free_blk; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_prev_leaf_bh; struct buffer_head* dl_leaf_bh; } ;
struct ocfs2_dir_block_trailer {int /*<<< orphan*/  db_free_next; int /*<<< orphan*/  db_free_rec_len; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,scalar_t__,struct buffer_head**) ; 
 struct ocfs2_dir_block_trailer* FUNC6 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *dir,
				     struct buffer_head *dx_root_bh,
				     int namelen,
				     struct ocfs2_dir_lookup_result *lookup)
{
	int ret = -ENOSPC;
	struct buffer_head *leaf_bh = NULL, *prev_leaf_bh = NULL;
	struct ocfs2_dir_block_trailer *db;
	u64 next_block;
	int rec_len = FUNC0(namelen);
	struct ocfs2_dx_root_block *dx_root;

	dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
	next_block = FUNC3(dx_root->dr_free_blk);

	while (next_block) {
		FUNC1(prev_leaf_bh);
		prev_leaf_bh = leaf_bh;
		leaf_bh = NULL;

		ret = FUNC5(dir, next_block, &leaf_bh);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		db = FUNC6(leaf_bh, dir->i_sb);
		if (rec_len <= FUNC2(db->db_free_rec_len)) {
			lookup->dl_leaf_bh = leaf_bh;
			lookup->dl_prev_leaf_bh = prev_leaf_bh;
			leaf_bh = NULL;
			prev_leaf_bh = NULL;
			break;
		}

		next_block = FUNC3(db->db_free_next);
	}

	if (!next_block)
		ret = -ENOSPC;

out:

	FUNC1(leaf_bh);
	FUNC1(prev_leaf_bh);
	return ret;
}