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
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_signature; int /*<<< orphan*/  dr_blkno; int /*<<< orphan*/  dr_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dx_root_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,unsigned long long,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb,
				  struct buffer_head *bh)
{
	int ret;
	struct ocfs2_dx_root_block *dx_root;

	FUNC0(!FUNC2(bh));

	dx_root = (struct ocfs2_dx_root_block *) bh->b_data;

	ret = FUNC6(sb, bh->b_data, &dx_root->dr_check);
	if (ret) {
		FUNC4(ML_ERROR,
		     "Checksum failed for dir index root block %llu\n",
		     (unsigned long long)bh->b_blocknr);
		return ret;
	}

	if (!FUNC1(dx_root)) {
		FUNC5(sb,
			    "Dir Index Root # %llu has bad signature %.*s",
			    (unsigned long long)FUNC3(dx_root->dr_blkno),
			    7, dx_root->dr_signature);
		return -EINVAL;
	}

	return 0;
}