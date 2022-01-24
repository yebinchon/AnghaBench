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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*,scalar_t__,int,int*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
					    handle_t *handle,
					    struct ocfs2_xattr_bucket *first,
					    struct ocfs2_xattr_bucket *target,
					    u64 new_blk,
					    u32 prev_clusters,
					    u32 *v_start,
					    int *extend)
{
	int ret;

	FUNC2(0, "adjust xattrs from cluster %llu len %u to %llu\n",
	     (unsigned long long)FUNC1(first), prev_clusters,
	     (unsigned long long)new_blk);

	if (FUNC8(FUNC0(inode->i_sb)) > 1) {
		ret = FUNC6(inode,
							  handle,
							  first, target,
							  new_blk,
							  prev_clusters,
							  v_start);
		if (ret)
			FUNC3(ret);
	} else {
		/* The start of the last cluster in the first extent */
		u64 last_blk = FUNC1(first) +
			((prev_clusters - 1) *
			 FUNC4(inode->i_sb, 1));

		if (prev_clusters > 1 && FUNC1(target) != last_blk) {
			ret = FUNC7(inode, handle,
						     FUNC1(first),
						     last_blk, new_blk, 0,
						     v_start);
			if (ret)
				FUNC3(ret);
		} else {
			ret = FUNC5(inode, handle,
							 last_blk, new_blk,
							 v_start);
			if (ret)
				FUNC3(ret);

			if ((FUNC1(target) == last_blk) && extend)
				*extend = 0;
		}
	}

	return ret;
}