#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_search {TYPE_1__* bucket; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  name_index; scalar_t__ value_len; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/ * bu_bhs; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
					   handle_t *handle,
					   struct ocfs2_xattr_info *xi,
					   struct ocfs2_xattr_search *xs,
					   u32 name_hash,
					   int local)
{
	int ret;
	u64 blkno;

	FUNC1(0, "Set xattr entry len = %lu index = %d in bucket %llu\n",
	     (unsigned long)xi->value_len, xi->name_index,
	     (unsigned long long)FUNC0(xs->bucket));

	if (!xs->bucket->bu_bhs[1]) {
		blkno = FUNC0(xs->bucket);
		FUNC6(xs->bucket);
		ret = FUNC3(xs->bucket, blkno);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	}

	ret = FUNC4(handle, xs->bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC2(ret);
		goto out;
	}

	FUNC7(inode, xi, xs, name_hash, local);
	FUNC5(handle, xs->bucket);

out:
	return ret;
}