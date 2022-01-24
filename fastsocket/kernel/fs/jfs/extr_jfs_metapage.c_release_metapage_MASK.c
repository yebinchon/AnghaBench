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
struct metapage {scalar_t__ lsn; int /*<<< orphan*/  flag; scalar_t__ nohomeok; scalar_t__ count; struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  META_dirty ; 
 int /*<<< orphan*/  META_sync ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct metapage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 

void FUNC13(struct metapage * mp)
{
	struct page *page = mp->page;
	FUNC4("release_metapage: mp = 0x%p, flag = 0x%lx", mp, mp->flag);

	FUNC0(!page);

	FUNC5(page);
	FUNC10(mp);

	FUNC1(mp->count);
	if (--mp->count || mp->nohomeok) {
		FUNC11(page);
		FUNC6(page);
		return;
	}

	if (FUNC9(META_dirty, &mp->flag)) {
		FUNC8(page);
		if (FUNC9(META_sync, &mp->flag)) {
			FUNC2(META_sync, &mp->flag);
			FUNC12(page, 1);
			FUNC5(page); /* write_one_page unlocks the page */
		}
	} else if (mp->lsn)	/* discard_metapage doesn't remove it */
		FUNC7(mp);

	/* Try to keep metapages from using up too much memory */
	FUNC3(page, mp);

	FUNC11(page);
	FUNC6(page);
}