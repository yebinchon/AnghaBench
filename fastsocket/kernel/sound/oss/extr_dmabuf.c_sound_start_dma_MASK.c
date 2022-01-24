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
struct dma_buffparms {int dma; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct dma_buffparms *dmap, unsigned long physaddr, int count, int dma_mode)
{
	unsigned long flags;
	int chan = dmap->dma;

	/* printk( "Start DMA%d %d, %d\n",  chan,  (int)(physaddr-dmap->raw_buf_phys),  count); */

	flags = FUNC0();
	FUNC2(chan);
	FUNC1(chan);
	FUNC7(chan, dma_mode);
	FUNC5(chan, physaddr);
	FUNC6(chan, count);
	FUNC3(chan);
	FUNC4(flags);

	return 0;
}