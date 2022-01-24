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
struct ocfs2_xattr_reflink {int /*<<< orphan*/  old_inode; int /*<<< orphan*/  new_inode; } ;
struct ocfs2_reflink_xattr_tree_args {void* new_bucket; void* old_bucket; struct buffer_head* new_blk_bh; struct buffer_head* old_blk_bh; struct ocfs2_xattr_reflink* reflink; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  para ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_reflink_xattr_tree_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ,struct ocfs2_reflink_xattr_tree_args*) ; 
 int /*<<< orphan*/  ocfs2_reflink_xattr_rec ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_xattr_reflink *args,
				    struct buffer_head *blk_bh,
				    struct buffer_head *new_blk_bh)
{
	int ret;
	struct ocfs2_reflink_xattr_tree_args para;

	FUNC0(&para, 0, sizeof(para));
	para.reflink = args;
	para.old_blk_bh = blk_bh;
	para.new_blk_bh = new_blk_bh;

	para.old_bucket = FUNC4(args->old_inode);
	if (!para.old_bucket) {
		FUNC1(-ENOMEM);
		return -ENOMEM;
	}

	para.new_bucket = FUNC4(args->new_inode);
	if (!para.new_bucket) {
		ret = -ENOMEM;
		FUNC1(ret);
		goto out;
	}

	ret = FUNC2(args->old_inode, blk_bh,
					      ocfs2_reflink_xattr_rec,
					      &para);
	if (ret)
		FUNC1(ret);

out:
	FUNC3(para.old_bucket);
	FUNC3(para.new_bucket);
	return ret;
}