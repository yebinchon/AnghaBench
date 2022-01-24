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
struct page {int dummy; } ;
struct ocfs2_write_ctxt {TYPE_1__* w_di_bh; } ;
struct ocfs2_inode_info {int ip_dyn_features; scalar_t__ ip_clusters; scalar_t__ ip_blkno; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_3__ {scalar_t__ b_data; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned int,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,TYPE_1__*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,struct ocfs2_dinode*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,unsigned int) ; 
 int FUNC7 (struct address_space*,struct inode*,struct ocfs2_write_ctxt*) ; 

__attribute__((used)) static int FUNC8(struct address_space *mapping,
					  struct inode *inode, loff_t pos,
					  unsigned len, struct page *mmap_page,
					  struct ocfs2_write_ctxt *wc)
{
	int ret, written = 0;
	loff_t end = pos + len;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di = NULL;

	FUNC2(0, "Inode %llu, write of %u bytes at off %llu. features: 0x%x\n",
	     (unsigned long long)oi->ip_blkno, len, (unsigned long long)pos,
	     oi->ip_dyn_features);

	/*
	 * Handle inodes which already have inline data 1st.
	 */
	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		if (mmap_page == NULL &&
		    FUNC6(wc->w_di_bh, end))
			goto do_inline_write;

		/*
		 * The write won't fit - we have to give this inode an
		 * inline extent list now.
		 */
		ret = FUNC4(inode, wc->w_di_bh);
		if (ret)
			FUNC3(ret);
		goto out;
	}

	/*
	 * Check whether the inode can accept inline data.
	 */
	if (oi->ip_clusters != 0 || FUNC1(inode) != 0)
		return 0;

	/*
	 * Check whether the write can fit.
	 */
	di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;
	if (mmap_page ||
	    end > FUNC5(inode->i_sb, di))
		return 0;

do_inline_write:
	ret = FUNC7(mapping, inode, wc);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	/*
	 * This signals to the caller that the data can be written
	 * inline.
	 */
	written = 1;
out:
	return written ? written : ret;
}