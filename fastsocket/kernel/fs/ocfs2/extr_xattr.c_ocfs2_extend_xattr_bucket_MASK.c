#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_9__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  xh_num_buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_xattr_bucket*) ; 
 TYPE_8__* FUNC3 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,TYPE_1__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 int FUNC12 (TYPE_1__*,struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct ocfs2_xattr_bucket*) ; 
 int FUNC14 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC15(struct inode *inode,
				     handle_t *handle,
				     struct ocfs2_xattr_bucket *first,
				     u64 target_blk,
				     u32 num_clusters)
{
	int ret, credits;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	u16 blk_per_bucket = FUNC8(inode->i_sb);
	u64 end_blk;
	u16 new_bucket = FUNC5(FUNC3(first)->xh_num_buckets);

	FUNC6(0, "extend xattr bucket in %llu, xattr extend rec starting "
	     "from %llu, len = %u\n", (unsigned long long)target_blk,
	     (unsigned long long)FUNC2(first), num_clusters);

	/* The extent must have room for an additional bucket */
	FUNC0(new_bucket >=
	       (num_clusters * FUNC14(osb)));

	/* end_blk points to the last existing bucket */
	end_blk = FUNC2(first) + ((new_bucket - 1) * blk_per_bucket);

	/*
	 * end_blk is the start of the last existing bucket.
	 * Thus, (end_blk - target_blk) covers the target bucket and
	 * every bucket after it up to, but not including, the last
	 * existing bucket.  Then we add the last existing bucket, the
	 * new bucket, and the first bucket (3 * blk_per_bucket).
	 */
	credits = (end_blk - target_blk) + (3 * blk_per_bucket) +
		  handle->h_buffer_credits;
	ret = FUNC11(handle, credits);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	ret = FUNC12(handle, first,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	while (end_blk != target_blk) {
		ret = FUNC9(inode, handle, end_blk,
					    end_blk + blk_per_bucket, 0);
		if (ret)
			goto out;
		end_blk -= blk_per_bucket;
	}

	/* Move half of the xattr in target_blkno to the next bucket. */
	ret = FUNC10(inode, handle, target_blk,
					target_blk + blk_per_bucket, NULL, 0);

	FUNC4(&FUNC3(first)->xh_num_buckets, 1);
	FUNC13(handle, first);

out:
	return ret;
}