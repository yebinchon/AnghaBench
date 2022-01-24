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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_dx_leaf {int /*<<< orphan*/  dl_list; } ;
struct ocfs2_dx_hinfo {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ocfs2_dx_hinfo*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, handle_t *handle,
				      struct ocfs2_dx_hinfo *hinfo,
				      u64 dirent_blk,
				      struct buffer_head *dx_leaf_bh)
{
	int ret;
	struct ocfs2_dx_leaf *dx_leaf;

	ret = FUNC3(handle, FUNC0(dir), dx_leaf_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	dx_leaf = (struct ocfs2_dx_leaf *)dx_leaf_bh->b_data;
	FUNC2(&dx_leaf->dl_list, hinfo, dirent_blk);
	FUNC4(handle, dx_leaf_bh);

out:
	return ret;
}