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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  de_count; int /*<<< orphan*/  de_num_used; } ;
struct ocfs2_dx_leaf {TYPE_1__ dl_list; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_leaf_bh; int /*<<< orphan*/  dl_hinfo; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ocfs2_super*,struct inode*,struct buffer_head*,struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_super *osb, struct inode *dir,
				   struct buffer_head *di_bh,
				   struct buffer_head *dx_root_bh,
				   const char *name, int namelen,
				   struct ocfs2_dir_lookup_result *lookup)
{
	int ret, rebalanced = 0;
	struct ocfs2_dx_root_block *dx_root;
	struct buffer_head *dx_leaf_bh = NULL;
	struct ocfs2_dx_leaf *dx_leaf;
	u64 blkno;
	u32 leaf_cpos;

	dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

restart_search:
	ret = FUNC3(dir, &dx_root->dr_list, &lookup->dl_hinfo,
				  &leaf_cpos, &blkno);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	ret = FUNC5(dir, blkno, &dx_leaf_bh);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	dx_leaf = (struct ocfs2_dx_leaf *)dx_leaf_bh->b_data;

	if (FUNC1(dx_leaf->dl_list.de_num_used) >=
	    FUNC1(dx_leaf->dl_list.de_count)) {
		if (rebalanced) {
			/*
			 * Rebalancing should have provided us with
			 * space in an appropriate leaf.
			 *
			 * XXX: Is this an abnormal condition then?
			 * Should we print a message here?
			 */
			ret = -ENOSPC;
			goto out;
		}

		ret = FUNC4(osb, dir, dx_root_bh, dx_leaf_bh,
					     &lookup->dl_hinfo, leaf_cpos,
					     blkno);
		if (ret) {
			if (ret != -ENOSPC)
				FUNC2(ret);
			goto out;
		}

		/*
		 * Restart the lookup. The rebalance might have
		 * changed which block our item fits into. Mark our
		 * progress, so we only execute this once.
		 */
		FUNC0(dx_leaf_bh);
		dx_leaf_bh = NULL;
		rebalanced = 1;
		goto restart_search;
	}

	lookup->dl_dx_leaf_bh = dx_leaf_bh;
	dx_leaf_bh = NULL;

out:
	FUNC0(dx_leaf_bh);
	return ret;
}