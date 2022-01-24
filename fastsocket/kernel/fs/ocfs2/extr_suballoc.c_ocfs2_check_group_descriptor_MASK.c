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
struct super_block {int dummy; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_check; } ;
struct ocfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int FUNC3 (struct super_block*,struct ocfs2_dinode*,struct buffer_head*,int) ; 
 int FUNC4 (struct super_block*,struct buffer_head*,int) ; 
 int FUNC5 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC6(struct super_block *sb,
				 struct ocfs2_dinode *di,
				 struct buffer_head *bh)
{
	int rc;
	struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

	FUNC0(!FUNC1(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 */
	rc = FUNC5(sb, bh->b_data, &gd->bg_check);
	if (rc) {
		FUNC2(ML_ERROR,
		     "Checksum failed for group descriptor %llu\n",
		     (unsigned long long)bh->b_blocknr);
	} else
		rc = FUNC4(sb, bh, 1);
	if (!rc)
		rc = FUNC3(sb, di, bh, 1);

	return rc;
}