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
struct snd_emu10k1_memblk {int mapped_page; int first_page; int last_page; int /*<<< orphan*/  mapped_order_link; int /*<<< orphan*/  mapped_link; int /*<<< orphan*/  pages; } ;
struct list_head {int dummy; } ;
struct snd_emu10k1 {int /*<<< orphan*/ * page_addr_table; struct list_head mapped_order_link_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,struct list_head**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
	int page, pg;
	struct list_head *next;

	page = FUNC1(emu, blk->pages, &next);
	if (page < 0) /* not found */
		return page;
	/* insert this block in the proper position of mapped list */
	FUNC0(&blk->mapped_link, next);
	/* append this as a newest block in order list */
	FUNC0(&blk->mapped_order_link, &emu->mapped_order_link_head);
	blk->mapped_page = page;
	/* fill PTB */
	for (pg = blk->first_page; pg <= blk->last_page; pg++) {
		FUNC2(emu, page, emu->page_addr_table[pg]);
		page++;
	}
	return 0;
}