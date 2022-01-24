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
struct super_block {int dummy; } ;
struct ocfs2_dinode {int i_flags; int /*<<< orphan*/  i_fs_generation; int /*<<< orphan*/  i_blkno; int /*<<< orphan*/  i_signature; int /*<<< orphan*/  i_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long long fs_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dinode*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  OCFS2_VALID_FL ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,unsigned long long,...) ; 
 int FUNC9 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC10(struct super_block *sb,
			       struct buffer_head *bh)
{
	int rc;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)bh->b_data;

	FUNC7(0, "Validating dinode %llu\n",
	     (unsigned long long)bh->b_blocknr);

	FUNC0(!FUNC3(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 */
	rc = FUNC9(sb, bh->b_data, &di->i_check);
	if (rc) {
		FUNC7(ML_ERROR, "Checksum failed for dinode %llu\n",
		     (unsigned long long)bh->b_blocknr);
		goto bail;
	}

	/*
	 * Errors after here are fatal.
	 */

	rc = -EINVAL;

	if (!FUNC1(di)) {
		FUNC8(sb, "Invalid dinode #%llu: signature = %.*s\n",
			    (unsigned long long)bh->b_blocknr, 7,
			    di->i_signature);
		goto bail;
	}

	if (FUNC6(di->i_blkno) != bh->b_blocknr) {
		FUNC8(sb, "Invalid dinode #%llu: i_blkno is %llu\n",
			    (unsigned long long)bh->b_blocknr,
			    (unsigned long long)FUNC6(di->i_blkno));
		goto bail;
	}

	if (!(di->i_flags & FUNC4(OCFS2_VALID_FL))) {
		FUNC8(sb,
			    "Invalid dinode #%llu: OCFS2_VALID_FL not set\n",
			    (unsigned long long)bh->b_blocknr);
		goto bail;
	}

	if (FUNC5(di->i_fs_generation) !=
	    FUNC2(sb)->fs_generation) {
		FUNC8(sb,
			    "Invalid dinode #%llu: fs_generation is %u\n",
			    (unsigned long long)bh->b_blocknr,
			    FUNC5(di->i_fs_generation));
		goto bail;
	}

	rc = 0;

bail:
	return rc;
}