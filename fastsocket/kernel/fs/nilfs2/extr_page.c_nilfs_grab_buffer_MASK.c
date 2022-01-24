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
struct page {int dummy; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int dummy; } ;
struct address_space {int /*<<< orphan*/ * assoc_mapping; } ;
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int PAGE_CACHE_SHIFT ; 
 struct buffer_head* FUNC1 (struct page*,unsigned long,unsigned long,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC7 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

struct buffer_head *FUNC14(struct inode *inode,
				      struct address_space *mapping,
				      unsigned long blkoff,
				      unsigned long b_state)
{
	int blkbits = inode->i_blkbits;
	pgoff_t index = blkoff >> (PAGE_CACHE_SHIFT - blkbits);
	struct page *page, *opage;
	struct buffer_head *bh, *obh;

	page = FUNC7(mapping, index);
	if (FUNC12(!page))
		return NULL;

	bh = FUNC1(page, blkoff, index, blkbits, b_state);
	if (FUNC12(!bh)) {
		FUNC13(page);
		FUNC11(page);
		return NULL;
	}
	if (!FUNC5(bh) && mapping->assoc_mapping != NULL) {
		/*
		 * Shadow page cache uses assoc_mapping to point its original
		 * page cache.  The following code tries the original cache
		 * if the given cache is a shadow and it didn't hit.
		 */
		opage = FUNC6(mapping->assoc_mapping, index);
		if (!opage)
			return bh;

		obh = FUNC1(opage, blkoff, index, blkbits,
					     b_state);
		if (FUNC5(obh)) {
			FUNC8(bh, obh);
			if (FUNC3(obh)) {
				FUNC9(bh);
				if (!FUNC4(bh) && FUNC0(inode))
					FUNC10(inode);
			}
		}
		FUNC2(obh);
		FUNC13(opage);
		FUNC11(opage);
	}
	return bh;
}