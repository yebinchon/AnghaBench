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
typedef  unsigned int u32 ;
struct ocfs2_write_ctxt {unsigned int w_cpos; unsigned int w_clen; int w_large_pages; int /*<<< orphan*/  w_dealloc; struct buffer_head* w_di_bh; int /*<<< orphan*/  w_first_new_cpos; } ;
struct ocfs2_super {unsigned int s_clustersize_bits; } ;
struct buffer_head {int dummy; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct ocfs2_write_ctxt* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_write_ctxt **wcp,
				  struct ocfs2_super *osb, loff_t pos,
				  unsigned len, struct buffer_head *di_bh)
{
	u32 cend;
	struct ocfs2_write_ctxt *wc;

	wc = FUNC1(sizeof(struct ocfs2_write_ctxt), GFP_NOFS);
	if (!wc)
		return -ENOMEM;

	wc->w_cpos = pos >> osb->s_clustersize_bits;
	wc->w_first_new_cpos = UINT_MAX;
	cend = (pos + len - 1) >> osb->s_clustersize_bits;
	wc->w_clen = cend - wc->w_cpos + 1;
	FUNC0(di_bh);
	wc->w_di_bh = di_bh;

	if (FUNC3(PAGE_CACHE_SHIFT > osb->s_clustersize_bits))
		wc->w_large_pages = 1;
	else
		wc->w_large_pages = 0;

	FUNC2(&wc->w_dealloc);

	*wcp = wc;

	return 0;
}