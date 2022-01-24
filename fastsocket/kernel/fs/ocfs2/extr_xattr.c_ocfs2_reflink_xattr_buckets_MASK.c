#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_xattr_value_buf {int /*<<< orphan*/  vb_access; } ;
struct ocfs2_reflink_xattr_tree_args {TYPE_2__* new_bucket; TYPE_2__* old_bucket; TYPE_5__* reflink; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_16__ {int /*<<< orphan*/  xh_num_buckets; } ;
struct TYPE_15__ {TYPE_1__* old_inode; } ;
struct TYPE_14__ {int bu_blocks; int /*<<< orphan*/ * bu_bhs; } ;
struct TYPE_13__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_6__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ocfs2_get_reflink_xattr_value_root ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  ocfs2_journal_access ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,TYPE_6__*,struct ocfs2_xattr_value_buf*,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,struct ocfs2_reflink_xattr_tree_args*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(handle_t *handle,
				u64 blkno, u64 new_blkno, u32 clusters,
				struct ocfs2_alloc_context *meta_ac,
				struct ocfs2_alloc_context *data_ac,
				struct ocfs2_reflink_xattr_tree_args *args)
{
	int i, j, ret = 0;
	struct super_block *sb = args->reflink->old_inode->i_sb;
	u32 bpc = FUNC12(FUNC0(sb));
	u32 num_buckets = clusters * bpc;
	int bpb = args->old_bucket->bu_blocks;
	struct ocfs2_xattr_value_buf vb = {
		.vb_access = ocfs2_journal_access,
	};

	for (i = 0; i < num_buckets; i++, blkno += bpb, new_blkno += bpb) {
		ret = FUNC7(args->old_bucket, blkno);
		if (ret) {
			FUNC5(ret);
			break;
		}

		ret = FUNC6(args->new_bucket, new_blkno);
		if (ret) {
			FUNC5(ret);
			break;
		}

		/*
		 * The real bucket num in this series of blocks is stored
		 * in the 1st bucket.
		 */
		if (i == 0)
			num_buckets = FUNC3(
				FUNC2(args->old_bucket)->xh_num_buckets);

		ret = FUNC9(handle,
						args->new_bucket,
						OCFS2_JOURNAL_ACCESS_CREATE);
		if (ret) {
			FUNC5(ret);
			break;
		}

		for (j = 0; j < bpb; j++)
			FUNC4(FUNC1(args->new_bucket, j),
			       FUNC1(args->old_bucket, j),
			       sb->s_blocksize);

		FUNC10(handle, args->new_bucket);

		ret = FUNC8(handle, args->reflink,
					args->old_bucket->bu_bhs[0],
					FUNC2(args->old_bucket),
					args->new_bucket->bu_bhs[0],
					FUNC2(args->new_bucket),
					&vb, meta_ac,
					ocfs2_get_reflink_xattr_value_root,
					args);
		if (ret) {
			FUNC5(ret);
			break;
		}

		/*
		 * Re-access and dirty the bucket to calculate metaecc.
		 * Because we may extend the transaction in reflink_xattr_header
		 * which will let the already accessed block gone.
		 */
		ret = FUNC9(handle,
						args->new_bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
		if (ret) {
			FUNC5(ret);
			break;
		}

		FUNC10(handle, args->new_bucket);
		FUNC11(args->old_bucket);
		FUNC11(args->new_bucket);
	}

	FUNC11(args->old_bucket);
	FUNC11(args->new_bucket);
	return ret;
}