#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ocfs2_xattr_value_root {int /*<<< orphan*/  xr_list; int /*<<< orphan*/  xr_clusters; } ;
struct ocfs2_xattr_value_buf {struct ocfs2_xattr_value_root* vb_xv; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 void* FUNC8 (TYPE_1__*,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC11 (int /*<<< orphan*/ ,void*,struct buffer_head**,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
					   handle_t *handle,
					   struct ocfs2_xattr_value_buf *vb,
					   const void *value,
					   int value_len)
{
	int ret = 0, i, cp_len;
	u16 blocksize = inode->i_sb->s_blocksize;
	u32 p_cluster, num_clusters;
	u32 cpos = 0, bpc = FUNC8(inode->i_sb, 1);
	u32 clusters = FUNC7(inode->i_sb, value_len);
	u64 blkno;
	struct buffer_head *bh = NULL;
	unsigned int ext_flags;
	struct ocfs2_xattr_value_root *xv = vb->vb_xv;

	FUNC0(clusters > FUNC3(xv->xr_clusters));

	while (cpos < clusters) {
		ret = FUNC12(inode, cpos, &p_cluster,
					       &num_clusters, &xv->xr_list,
					       &ext_flags);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		FUNC0(ext_flags & OCFS2_EXT_REFCOUNTED);

		blkno = FUNC8(inode->i_sb, p_cluster);

		for (i = 0; i < num_clusters * bpc; i++, blkno++) {
			ret = FUNC11(FUNC1(inode), blkno,
					       &bh, NULL);
			if (ret) {
				FUNC6(ret);
				goto out;
			}

			ret = FUNC9(handle,
						   FUNC1(inode),
						   bh,
						   OCFS2_JOURNAL_ACCESS_WRITE);
			if (ret < 0) {
				FUNC6(ret);
				goto out;
			}

			cp_len = value_len > blocksize ? blocksize : value_len;
			FUNC4(bh->b_data, value, cp_len);
			value_len -= cp_len;
			value += cp_len;
			if (cp_len < blocksize)
				FUNC5(bh->b_data + cp_len, 0,
				       blocksize - cp_len);

			ret = FUNC10(handle, bh);
			if (ret < 0) {
				FUNC6(ret);
				goto out;
			}
			FUNC2(bh);
			bh = NULL;

			/*
			 * XXX: do we need to empty all the following
			 * blocks in this cluster?
			 */
			if (!value_len)
				break;
		}
		cpos += num_clusters;
	}
out:
	FUNC2(bh);

	return ret;
}