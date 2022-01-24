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
struct TYPE_2__ {struct list_head* next; struct list_head* prev; } ;
struct snd_emu10k1_memblk {int mapped_page; int pages; int first_page; int last_page; TYPE_1__ mapped_order_link; TYPE_1__ mapped_link; } ;
struct list_head {int dummy; } ;
struct snd_emu10k1 {struct list_head mapped_link_head; } ;

/* Variables and functions */
 int MAX_ALIGN_PAGES ; 
 struct snd_emu10k1_memblk* FUNC0 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  mapped_link ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
	int start_page, end_page, mpage, pg;
	struct list_head *p;
	struct snd_emu10k1_memblk *q;

	/* calculate the expected size of empty region */
	if ((p = blk->mapped_link.prev) != &emu->mapped_link_head) {
		q = FUNC0(p, mapped_link);
		start_page = q->mapped_page + q->pages;
	} else
		start_page = 0;
	if ((p = blk->mapped_link.next) != &emu->mapped_link_head) {
		q = FUNC0(p, mapped_link);
		end_page = q->mapped_page;
	} else
		end_page = MAX_ALIGN_PAGES;

	/* remove links */
	FUNC1(&blk->mapped_link);
	FUNC1(&blk->mapped_order_link);
	/* clear PTB */
	mpage = blk->mapped_page;
	for (pg = blk->first_page; pg <= blk->last_page; pg++) {
		FUNC2(emu, mpage);
		mpage++;
	}
	blk->mapped_page = -1;
	return end_page - start_page; /* return the new empty size */
}