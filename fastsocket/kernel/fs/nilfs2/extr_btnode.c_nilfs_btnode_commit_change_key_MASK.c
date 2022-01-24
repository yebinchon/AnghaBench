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
struct page {scalar_t__ index; } ;
struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; struct buffer_head* bh; struct buffer_head* newbh; } ;
struct buffer_head {scalar_t__ b_blocknr; struct page* b_page; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

void FUNC10(struct address_space *btnc,
				    struct nilfs_btnode_chkey_ctxt *ctxt)
{
	struct buffer_head *obh = ctxt->bh, *nbh = ctxt->newbh;
	__u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;
	struct page *opage;

	if (oldkey == newkey)
		return;

	if (nbh == NULL) {	/* blocksize == pagesize */
		opage = obh->b_page;
		if (FUNC8(oldkey != opage->index))
			FUNC0(opage,
				       "invalid oldkey %lld (newkey=%lld)",
				       (unsigned long long)oldkey,
				       (unsigned long long)newkey);
		FUNC2(obh);

		FUNC6(&btnc->tree_lock);
		FUNC4(&btnc->page_tree, oldkey);
		FUNC5(&btnc->page_tree, newkey,
				   PAGECACHE_TAG_DIRTY);
		FUNC7(&btnc->tree_lock);

		opage->index = obh->b_blocknr = newkey;
		FUNC9(opage);
	} else {
		FUNC3(nbh, obh);
		FUNC2(nbh);

		nbh->b_blocknr = newkey;
		ctxt->bh = nbh;
		FUNC1(obh); /* will decrement bh->b_count */
	}
}