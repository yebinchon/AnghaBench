#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_truncate_context {struct buffer_head* tc_last_eb_bh; int /*<<< orphan*/  tc_dealloc; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_block {int dummy; } ;
struct TYPE_3__ {scalar_t__ l_tree_depth; } ;
struct TYPE_4__ {TYPE_1__ i_list; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_last_eb_blk; TYPE_2__ id2; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_clusters; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct ocfs2_truncate_context* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_truncate_context*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__,struct buffer_head**) ; 

int FUNC13(struct ocfs2_super *osb,
			   struct inode *inode,
			   struct buffer_head *fe_bh,
			   struct ocfs2_truncate_context **tc)
{
	int status;
	unsigned int new_i_clusters;
	struct ocfs2_dinode *fe;
	struct ocfs2_extent_block *eb;
	struct buffer_head *last_eb_bh = NULL;

	FUNC6();

	*tc = NULL;

	new_i_clusters = FUNC9(osb->sb,
						  FUNC1(inode));
	fe = (struct ocfs2_dinode *) fe_bh->b_data;

	FUNC5(0, "fe->i_clusters = %u, new_i_clusters = %u, fe->i_size ="
	     "%llu\n", FUNC3(fe->i_clusters), new_i_clusters,
	     (unsigned long long)FUNC4(fe->i_size));

	*tc = FUNC2(sizeof(struct ocfs2_truncate_context), GFP_KERNEL);
	if (!(*tc)) {
		status = -ENOMEM;
		FUNC7(status);
		goto bail;
	}
	FUNC11(&(*tc)->tc_dealloc);

	if (fe->id2.i_list.l_tree_depth) {
		status = FUNC12(FUNC0(inode),
						 FUNC4(fe->i_last_eb_blk),
						 &last_eb_bh);
		if (status < 0) {
			FUNC7(status);
			goto bail;
		}
		eb = (struct ocfs2_extent_block *) last_eb_bh->b_data;
	}

	(*tc)->tc_last_eb_bh = last_eb_bh;

	status = 0;
bail:
	if (status < 0) {
		if (*tc)
			FUNC10(*tc);
		*tc = NULL;
	}
	FUNC8();
	return status;
}