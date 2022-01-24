#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_super {TYPE_2__* sb; int /*<<< orphan*/  fs_generation; } ;
struct TYPE_5__ {int /*<<< orphan*/  de_count; } ;
struct ocfs2_dx_leaf {TYPE_1__ dl_list; int /*<<< orphan*/  dl_blkno; int /*<<< orphan*/  dl_fs_generation; int /*<<< orphan*/  dl_signature; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_7__ {scalar_t__ ip_blkno; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_DX_LEAF_SIGNATURE ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_dx_leaf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct buffer_head* FUNC13 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ocfs2_super *osb,
				       handle_t *handle, struct inode *dir,
				       struct buffer_head **dx_leaves,
				       int num_dx_leaves, u64 start_blk)
{
	int ret, i;
	struct ocfs2_dx_leaf *dx_leaf;
	struct buffer_head *bh;

	for (i = 0; i < num_dx_leaves; i++) {
		bh = FUNC13(osb->sb, start_blk + i);
		if (bh == NULL) {
			ret = -EIO;
			goto out;
		}
		dx_leaves[i] = bh;

		FUNC12(FUNC0(dir), bh);

		ret = FUNC10(handle, FUNC0(dir), bh,
					      OCFS2_JOURNAL_ACCESS_CREATE);
		if (ret < 0) {
			FUNC8(ret);
			goto out;
		}

		dx_leaf = (struct ocfs2_dx_leaf *) bh->b_data;

		FUNC6(dx_leaf, 0, osb->sb->s_blocksize);
		FUNC14(dx_leaf->dl_signature, OCFS2_DX_LEAF_SIGNATURE);
		dx_leaf->dl_fs_generation = FUNC3(osb->fs_generation);
		dx_leaf->dl_blkno = FUNC4(bh->b_blocknr);
		dx_leaf->dl_list.de_count =
			FUNC2(FUNC9(osb->sb));

		FUNC7(0,
		     "Dir %llu, format dx_leaf: %llu, entry count: %u\n",
		     (unsigned long long)FUNC1(dir)->ip_blkno,
		     (unsigned long long)bh->b_blocknr,
		     FUNC5(dx_leaf->dl_list.de_count));

		FUNC11(handle, bh);
	}

	ret = 0;
out:
	return ret;
}