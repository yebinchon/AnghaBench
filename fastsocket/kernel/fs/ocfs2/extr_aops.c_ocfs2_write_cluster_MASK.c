#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_write_ctxt {int w_num_pages; int /*<<< orphan*/ * w_pages; int /*<<< orphan*/  w_dealloc; int /*<<< orphan*/  w_handle; int /*<<< orphan*/  w_di_bh; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {scalar_t__ s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,unsigned long long,unsigned long long) ; 
 int FUNC9 (struct inode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,scalar_t__*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct ocfs2_write_ctxt*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct address_space *mapping,
			       u32 phys, unsigned int unwritten,
			       unsigned int should_zero,
			       struct ocfs2_alloc_context *data_ac,
			       struct ocfs2_alloc_context *meta_ac,
			       struct ocfs2_write_ctxt *wc, u32 cpos,
			       loff_t user_pos, unsigned user_len)
{
	int ret, i, new;
	u64 v_blkno, p_blkno;
	struct inode *inode = mapping->host;
	struct ocfs2_extent_tree et;

	new = phys == 0 ? 1 : 0;
	if (new) {
		u32 tmp_pos;

		/*
		 * This is safe to call with the page locks - it won't take
		 * any additional semaphores or cluster locks.
		 */
		tmp_pos = cpos;
		ret = FUNC6(FUNC3(inode->i_sb), inode,
					   &tmp_pos, 1, 0, wc->w_di_bh,
					   wc->w_handle, data_ac,
					   meta_ac, NULL);
		/*
		 * This shouldn't happen because we must have already
		 * calculated the correct meta data allocation required. The
		 * internal tree allocation code should know how to increase
		 * transaction credits itself.
		 *
		 * If need be, we could handle -EAGAIN for a
		 * RESTART_TRANS here.
		 */
		FUNC4(ret == -EAGAIN,
				"Inode %llu: EAGAIN return during allocation.\n",
				(unsigned long long)FUNC2(inode)->ip_blkno);
		if (ret < 0) {
			FUNC5(ret);
			goto out;
		}
	} else if (unwritten) {
		FUNC10(&et, FUNC1(inode),
					      wc->w_di_bh);
		ret = FUNC11(inode, &et,
						wc->w_handle, cpos, 1, phys,
						meta_ac, &wc->w_dealloc);
		if (ret < 0) {
			FUNC5(ret);
			goto out;
		}
	}

	if (should_zero)
		v_blkno = FUNC7(inode->i_sb, cpos);
	else
		v_blkno = user_pos >> inode->i_sb->s_blocksize_bits;

	/*
	 * The only reason this should fail is due to an inability to
	 * find the extent added.
	 */
	ret = FUNC9(inode, v_blkno, &p_blkno, NULL,
					  NULL);
	if (ret < 0) {
		FUNC8(inode->i_sb, "Corrupting extend for inode %llu, "
			    "at logical block %llu",
			    (unsigned long long)FUNC2(inode)->ip_blkno,
			    (unsigned long long)v_blkno);
		goto out;
	}

	FUNC0(p_blkno == 0);

	for(i = 0; i < wc->w_num_pages; i++) {
		int tmpret;

		tmpret = FUNC12(inode, &p_blkno, wc,
						      wc->w_pages[i], cpos,
						      user_pos, user_len,
						      should_zero);
		if (tmpret) {
			FUNC5(tmpret);
			if (ret == 0)
				ret = tmpret;
		}
	}

	/*
	 * We only have cleanup to do in case of allocating write.
	 */
	if (ret && new)
		FUNC13(inode, wc, user_pos, user_len);

out:

	return ret;
}