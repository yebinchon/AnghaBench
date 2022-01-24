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
struct tusb_omap_dma_ch {struct tusb_omap_dma* tusb_dma; } ;
struct tusb_omap_dma {int ch; int dmareq; int sync_dev; int /*<<< orphan*/  multichannel; } ;
struct dma_channel {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DMA_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tusb_omap_dma_ch* FUNC2 (struct dma_channel*) ; 

__attribute__((used)) static int FUNC3(struct dma_channel *channel)
{
	struct tusb_omap_dma_ch	*chdat = FUNC2(channel);
	struct tusb_omap_dma	*tusb_dma = chdat->tusb_dma;

	if (!tusb_dma->multichannel) {
		if (tusb_dma->ch >= 0) {
			FUNC1(tusb_dma->ch);
			FUNC0(tusb_dma->ch);
			tusb_dma->ch = -1;
		}

		tusb_dma->dmareq = -1;
		tusb_dma->sync_dev = -1;
	}

	channel->status = MUSB_DMA_STATUS_FREE;

	return 0;
}