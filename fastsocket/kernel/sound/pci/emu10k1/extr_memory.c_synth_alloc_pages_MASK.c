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
struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {int dma_mask; int /*<<< orphan*/ * page_ptr_table; int /*<<< orphan*/ * page_addr_table; int /*<<< orphan*/  memhdr; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int,int) ; 
 struct page* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1_memblk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct snd_emu10k1_memblk*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
	int page, first_page, last_page;

	FUNC3(blk);
	FUNC4(emu->memhdr, blk, &first_page, &last_page);
	/* allocate kernel pages */
	for (page = first_page; page <= last_page; page++) {
		/* first try to allocate from <4GB zone */
		struct page *p = FUNC2(GFP_KERNEL | GFP_DMA32 |
					    __GFP_NOWARN);
		if (!p || (FUNC6(p) & ~(emu->dma_mask >> PAGE_SHIFT))) {
			if (p)
				FUNC0(p);
			/* try to allocate from <16MB zone */
			p = FUNC2(GFP_ATOMIC | GFP_DMA |
				       __GFP_NORETRY | /* no OOM-killer */
				       __GFP_NOWARN);
		}
		if (!p) {
			FUNC1(emu, first_page, page - 1);
			return -ENOMEM;
		}
		emu->page_addr_table[page] = FUNC7(p);
		emu->page_ptr_table[page] = FUNC5(p);
	}
	return 0;
}