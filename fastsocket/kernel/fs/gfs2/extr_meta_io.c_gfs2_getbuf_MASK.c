#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned int sb_bsize_shift; int /*<<< orphan*/  sb_bsize; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_vfs; TYPE_1__ sd_sb; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct address_space* FUNC4 (struct gfs2_glock*) ; 
 struct page* FUNC5 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct buffer_head* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

struct buffer_head *FUNC13(struct gfs2_glock *gl, u64 blkno, int create)
{
	struct address_space *mapping = FUNC4(gl);
	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct page *page;
	struct buffer_head *bh;
	unsigned int shift;
	unsigned long index;
	unsigned int bufnum;

	shift = PAGE_CACHE_SHIFT - sdp->sd_sb.sb_bsize_shift;
	index = blkno >> shift;             /* convert block to page */
	bufnum = blkno - (index << shift);  /* block buf index within page */

	if (create) {
		for (;;) {
			page = FUNC5(mapping, index);
			if (page)
				break;
			FUNC12();
		}
	} else {
		page = FUNC2(mapping, index);
		if (!page)
			return NULL;
	}

	if (!FUNC10(page))
		FUNC1(page, sdp->sd_sb.sb_bsize, 0);

	/* Locate header for our buffer within our page */
	for (bh = FUNC8(page); bufnum--; bh = bh->b_this_page)
		/* Do nothing */;
	FUNC3(bh);

	if (!FUNC0(bh))
		FUNC6(bh, sdp->sd_vfs, blkno);

	FUNC11(page);
	FUNC7(page);
	FUNC9(page);

	return bh;
}