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
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_num_entries; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/  dl_dx_leaf_bh; TYPE_1__* dl_leaf_bh; int /*<<< orphan*/  dl_hinfo; struct buffer_head* dl_dx_root_bh; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_dx_root_block*) ; 
 scalar_t__ FUNC5 (struct ocfs2_dx_root_block*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, handle_t *handle,
			       struct ocfs2_dir_lookup_result *lookup)
{
	int ret = 0;
	struct ocfs2_dx_root_block *dx_root;
	struct buffer_head *dx_root_bh = lookup->dl_dx_root_bh;

	ret = FUNC6(handle, FUNC0(dir), dx_root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	dx_root = (struct ocfs2_dx_root_block *)lookup->dl_dx_root_bh->b_data;
	if (FUNC5(dx_root)) {
		FUNC4(dir, handle,
					    &lookup->dl_hinfo,
					    lookup->dl_leaf_bh->b_blocknr,
					    dx_root);
	} else {
		ret = FUNC1(dir, handle, &lookup->dl_hinfo,
						 lookup->dl_leaf_bh->b_blocknr,
						 lookup->dl_dx_leaf_bh);
		if (ret)
			goto out;
	}

	FUNC2(&dx_root->dr_num_entries, 1);
	FUNC7(handle, dx_root_bh);

out:
	return ret;
}