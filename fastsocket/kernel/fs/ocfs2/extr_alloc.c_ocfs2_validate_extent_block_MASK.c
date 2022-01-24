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
struct ocfs2_extent_block {int /*<<< orphan*/  h_fs_generation; int /*<<< orphan*/  h_blkno; int /*<<< orphan*/  h_signature; int /*<<< orphan*/  h_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long long fs_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_extent_block*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,unsigned long long,unsigned long long,...) ; 
 int FUNC8 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb,
				       struct buffer_head *bh)
{
	int rc;
	struct ocfs2_extent_block *eb =
		(struct ocfs2_extent_block *)bh->b_data;

	FUNC6(0, "Validating extent block %llu\n",
	     (unsigned long long)bh->b_blocknr);

	FUNC0(!FUNC3(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 */
	rc = FUNC8(sb, bh->b_data, &eb->h_check);
	if (rc) {
		FUNC6(ML_ERROR, "Checksum failed for extent block %llu\n",
		     (unsigned long long)bh->b_blocknr);
		return rc;
	}

	/*
	 * Errors after here are fatal.
	 */

	if (!FUNC1(eb)) {
		FUNC7(sb,
			    "Extent block #%llu has bad signature %.*s",
			    (unsigned long long)bh->b_blocknr, 7,
			    eb->h_signature);
		return -EINVAL;
	}

	if (FUNC5(eb->h_blkno) != bh->b_blocknr) {
		FUNC7(sb,
			    "Extent block #%llu has an invalid h_blkno "
			    "of %llu",
			    (unsigned long long)bh->b_blocknr,
			    (unsigned long long)FUNC5(eb->h_blkno));
		return -EINVAL;
	}

	if (FUNC4(eb->h_fs_generation) != FUNC2(sb)->fs_generation) {
		FUNC7(sb,
			    "Extent block #%llu has an invalid "
			    "h_fs_generation of #%u",
			    (unsigned long long)bh->b_blocknr,
			    FUNC4(eb->h_fs_generation));
		return -EINVAL;
	}

	return 0;
}