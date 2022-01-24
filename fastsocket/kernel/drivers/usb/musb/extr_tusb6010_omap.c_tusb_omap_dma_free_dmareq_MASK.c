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
struct tusb_omap_dma_ch {int dmareq; int sync_dev; int /*<<< orphan*/  tbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUSB_DMA_EP_MAP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct tusb_omap_dma_ch *chdat)
{
	u32 reg;

	if (!chdat || chdat->dmareq < 0)
		return;

	reg = FUNC0(chdat->tbase, TUSB_DMA_EP_MAP);
	reg &= ~(0x1f << (chdat->dmareq * 5));
	FUNC1(chdat->tbase, TUSB_DMA_EP_MAP, reg);

	chdat->dmareq = -1;
	chdat->sync_dev = -1;
}