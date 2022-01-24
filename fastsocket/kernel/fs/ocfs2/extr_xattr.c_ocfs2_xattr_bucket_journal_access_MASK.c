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
struct ocfs2_xattr_bucket {int bu_blocks; int /*<<< orphan*/ * bu_bhs; int /*<<< orphan*/  bu_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(handle_t *handle,
					     struct ocfs2_xattr_bucket *bucket,
					     int type)
{
	int i, rc = 0;

	for (i = 0; i < bucket->bu_blocks; i++) {
		rc = FUNC2(handle,
					  FUNC0(bucket->bu_inode),
					  bucket->bu_bhs[i], type);
		if (rc) {
			FUNC1(rc);
			break;
		}
	}

	return rc;
}