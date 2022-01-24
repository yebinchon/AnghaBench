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
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; } ;
struct mpage_da_data {scalar_t__ first_page; scalar_t__ next_page; struct inode* inode; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pagevec*,struct address_space*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void FUNC8(struct mpage_da_data *mpd)
{
	int nr_pages, i;
	pgoff_t index, end;
	struct pagevec pvec;
	struct inode *inode = mpd->inode;
	struct address_space *mapping = inode->i_mapping;

	index = mpd->first_page;
	end   = mpd->next_page - 1;
	while (index <= end) {
		nr_pages = FUNC5(&pvec, mapping, index, PAGEVEC_SIZE);
		if (nr_pages == 0)
			break;
		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];
			if (page->index > end)
				break;
			FUNC0(!FUNC2(page));
			FUNC0(FUNC3(page));
			FUNC4(page, 0);
			FUNC1(page);
			FUNC7(page);
		}
		index = pvec.pages[nr_pages - 1]->index + 1;
		FUNC6(&pvec);
	}
	return;
}