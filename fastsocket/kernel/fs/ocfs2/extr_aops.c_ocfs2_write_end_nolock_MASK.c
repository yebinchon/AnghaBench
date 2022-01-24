#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct ocfs2_write_ctxt {int w_num_pages; unsigned int w_target_from; unsigned int w_target_to; int /*<<< orphan*/  w_dealloc; TYPE_1__* w_di_bh; int /*<<< orphan*/ * w_handle; struct page* w_target_page; struct page** w_pages; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_mtime_nsec; void* i_ctime; void* i_mtime; void* i_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_size; TYPE_3__ i_mtime; TYPE_3__ i_ctime; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int ip_dyn_features; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ CURRENT_TIME ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int,unsigned int,unsigned int*,struct ocfs2_dinode*,struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC20 (struct page*) ; 
 scalar_t__ FUNC21 (int) ; 

int FUNC22(struct address_space *mapping,
			   loff_t pos, unsigned len, unsigned copied,
			   struct page *page, void *fsdata)
{
	int i;
	unsigned from, to, start = pos & (PAGE_CACHE_SIZE - 1);
	struct inode *inode = mapping->host;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_write_ctxt *wc = fsdata;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;
	handle_t *handle = wc->w_handle;
	struct page *tmppage;

	if (FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		FUNC18(inode, pos, len, &copied, di, wc);
		goto out_write_size;
	}

	if (FUNC21(copied < len)) {
		if (!FUNC3(wc->w_target_page))
			copied = 0;

		FUNC19(wc->w_target_page, start+copied,
				       start+len);
	}
	FUNC7(wc->w_target_page);

	for(i = 0; i < wc->w_num_pages; i++) {
		tmppage = wc->w_pages[i];

		if (tmppage == wc->w_target_page) {
			from = wc->w_target_from;
			to = wc->w_target_to;

			FUNC0(from > PAGE_CACHE_SIZE ||
			       to > PAGE_CACHE_SIZE ||
			       to < from);
		} else {
			/*
			 * Pages adjacent to the target (if any) imply
			 * a hole-filling write in which case we want
			 * to flush their entire range.
			 */
			from = 0;
			to = PAGE_CACHE_SIZE;
		}

		if (FUNC20(tmppage)) {
			if (FUNC17(inode))
				FUNC14(wc->w_handle, inode);
			FUNC4(tmppage, from, to);
		}
	}

out_write_size:
	pos += copied;
	if (pos > inode->i_size) {
		FUNC9(inode, pos);
		FUNC10(inode);
	}
	inode->i_blocks = FUNC13(inode);
	di->i_size = FUNC6((u64)FUNC8(inode));
	inode->i_mtime = inode->i_ctime = CURRENT_TIME;
	di->i_mtime = di->i_ctime = FUNC6(inode->i_mtime.tv_sec);
	di->i_mtime_nsec = di->i_ctime_nsec = FUNC5(inode->i_mtime.tv_nsec);
	FUNC15(handle, wc->w_di_bh);

	FUNC11(osb, handle);

	FUNC16(osb, &wc->w_dealloc);

	FUNC12(wc);

	return copied;
}