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
typedef  int u32 ;
struct tusb_omap_dma_ch {int epnum; int /*<<< orphan*/  tbase; scalar_t__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  TUSB_DMA_EP_MAP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(struct tusb_omap_dma_ch *chdat)
{
	u32		reg = FUNC1(chdat->tbase, TUSB_DMA_EP_MAP);

	if (reg != 0) {
		FUNC0(3, "ep%i dmareq0 is busy for ep%i\n",
			chdat->epnum, reg & 0xf);
		return -EAGAIN;
	}

	if (chdat->tx)
		reg = (1 << 4) | chdat->epnum;
	else
		reg = chdat->epnum;

	FUNC2(chdat->tbase, TUSB_DMA_EP_MAP, reg);

	return 0;
}