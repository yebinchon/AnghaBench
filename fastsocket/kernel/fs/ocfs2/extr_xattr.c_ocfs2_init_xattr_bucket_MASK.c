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
typedef  scalar_t__ u64 ;
struct ocfs2_xattr_bucket {int bu_blocks; int /*<<< orphan*/ * bu_bhs; TYPE_1__* bu_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_xattr_bucket *bucket,
				   u64 xb_blkno)
{
	int i, rc = 0;

	for (i = 0; i < bucket->bu_blocks; i++) {
		bucket->bu_bhs[i] = FUNC5(bucket->bu_inode->i_sb,
					      xb_blkno + i);
		if (!bucket->bu_bhs[i]) {
			rc = -EIO;
			FUNC1(rc);
			break;
		}

		if (!FUNC2(FUNC0(bucket->bu_inode),
					   bucket->bu_bhs[i]))
			FUNC3(FUNC0(bucket->bu_inode),
						      bucket->bu_bhs[i]);
	}

	if (rc)
		FUNC4(bucket);
	return rc;
}