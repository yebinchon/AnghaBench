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
struct buffer_head {unsigned long b_state; struct buffer_head* b_this_page; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 unsigned long BH_Dirty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned long NILFS_BUFFER_INHERENT_BITS ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 struct buffer_head* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC14(struct page *dst, struct page *src, int copy_dirty)
{
	struct buffer_head *dbh, *dbufs, *sbh, *sbufs;
	unsigned long mask = NILFS_BUFFER_INHERENT_BITS;

	FUNC0(FUNC5(dst));

	sbh = sbufs = FUNC11(src);
	if (!FUNC12(dst))
		FUNC9(dst, sbh->b_size, 0);

	if (copy_dirty)
		mask |= (1UL << BH_Dirty);

	dbh = dbufs = FUNC11(dst);
	do {
		FUNC10(sbh);
		FUNC10(dbh);
		dbh->b_state = sbh->b_state & mask;
		dbh->b_blocknr = sbh->b_blocknr;
		dbh->b_bdev = sbh->b_bdev;
		sbh = sbh->b_this_page;
		dbh = dbh->b_this_page;
	} while (dbh != dbufs);

	FUNC8(dst, src);

	if (FUNC4(src) && !FUNC4(dst))
		FUNC7(dst);
	else if (!FUNC4(src) && FUNC4(dst))
		FUNC2(dst);
	if (FUNC3(src) && !FUNC3(dst))
		FUNC6(dst);
	else if (!FUNC3(src) && FUNC3(dst))
		FUNC1(dst);

	do {
		FUNC13(sbh);
		FUNC13(dbh);
		sbh = sbh->b_this_page;
		dbh = dbh->b_this_page;
	} while (dbh != dbufs);
}