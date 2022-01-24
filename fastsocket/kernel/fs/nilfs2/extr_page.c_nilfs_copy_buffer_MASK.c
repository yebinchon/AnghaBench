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
struct buffer_head {int b_state; struct buffer_head* b_this_page; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_size; struct page* b_page; } ;

/* Variables and functions */
 unsigned long BH_Mapped ; 
 unsigned long BH_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 int NILFS_BUFFER_INHERENT_BITS ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 

void FUNC10(struct buffer_head *dbh, struct buffer_head *sbh)
{
	void *kaddr0, *kaddr1;
	unsigned long bits;
	struct page *spage = sbh->b_page, *dpage = dbh->b_page;
	struct buffer_head *bh;

	kaddr0 = FUNC5(spage, KM_USER0);
	kaddr1 = FUNC5(dpage, KM_USER1);
	FUNC8(kaddr1 + FUNC4(dbh), kaddr0 + FUNC4(sbh), sbh->b_size);
	FUNC6(kaddr1, KM_USER1);
	FUNC6(kaddr0, KM_USER0);

	dbh->b_state = sbh->b_state & NILFS_BUFFER_INHERENT_BITS;
	dbh->b_blocknr = sbh->b_blocknr;
	dbh->b_bdev = sbh->b_bdev;

	bh = dbh;
	bits = sbh->b_state & ((1UL << BH_Uptodate) | (1UL << BH_Mapped));
	while ((bh = bh->b_this_page) != dbh) {
		FUNC7(bh);
		bits &= bh->b_state;
		FUNC9(bh);
	}
	if (bits & (1UL << BH_Uptodate))
		FUNC3(dpage);
	else
		FUNC1(dpage);
	if (bits & (1UL << BH_Mapped))
		FUNC2(dpage);
	else
		FUNC0(dpage);
}