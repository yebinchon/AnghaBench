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
typedef  int /*<<< orphan*/  u32 ;
struct page {struct address_space* mapping; } ;
struct ocfs2_write_ctxt {int w_num_pages; struct page** w_pages; struct page* w_target_page; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned long loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned long PAGE_CACHE_SHIFT ; 
 struct page* FUNC0 (struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct address_space *mapping,
				      struct ocfs2_write_ctxt *wc,
				      u32 cpos, loff_t user_pos, int new,
				      struct page *mmap_page)
{
	int ret = 0, i;
	unsigned long start, target_index, index;
	struct inode *inode = mapping->host;

	target_index = user_pos >> PAGE_CACHE_SHIFT;

	/*
	 * Figure out how many pages we'll be manipulating here. For
	 * non allocating write, we just change the one
	 * page. Otherwise, we'll need a whole clusters worth.
	 */
	if (new) {
		wc->w_num_pages = FUNC4(inode->i_sb);
		start = FUNC3(inode->i_sb, cpos);
	} else {
		wc->w_num_pages = 1;
		start = target_index;
	}

	for(i = 0; i < wc->w_num_pages; i++) {
		index = start + i;

		if (index == target_index && mmap_page) {
			/*
			 * ocfs2_pagemkwrite() is a little different
			 * and wants us to directly use the page
			 * passed in.
			 */
			FUNC1(mmap_page);

			if (mmap_page->mapping != mapping) {
				FUNC6(mmap_page);
				/*
				 * Sanity check - the locking in
				 * ocfs2_pagemkwrite() should ensure
				 * that this code doesn't trigger.
				 */
				ret = -EINVAL;
				FUNC2(ret);
				goto out;
			}

			FUNC5(mmap_page);
			wc->w_pages[i] = mmap_page;
		} else {
			wc->w_pages[i] = FUNC0(mapping, index,
							     GFP_NOFS);
			if (!wc->w_pages[i]) {
				ret = -ENOMEM;
				FUNC2(ret);
				goto out;
			}
		}

		if (index == target_index)
			wc->w_target_page = wc->w_pages[i];
	}
out:
	return ret;
}