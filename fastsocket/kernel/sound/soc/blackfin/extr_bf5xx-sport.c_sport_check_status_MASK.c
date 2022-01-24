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
struct sport_device {int /*<<< orphan*/  dma_tx_chan; int /*<<< orphan*/  dma_rx_chan; TYPE_1__* regs; } ;
struct TYPE_2__ {int stat; } ;

/* Variables and functions */
 int DMA_DONE ; 
 int DMA_ERR ; 
 int ROVF ; 
 int RUVF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int TOVF ; 
 int TUVF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sport_device *sport,
		unsigned int *sport_stat,
		unsigned int *rx_stat,
		unsigned int *tx_stat)
{
	int status = 0;

	if (sport_stat) {
		FUNC0();
		status = sport->regs->stat;
		if (status & (TOVF|TUVF|ROVF|RUVF))
			sport->regs->stat = (status & (TOVF|TUVF|ROVF|RUVF));
		FUNC0();
		*sport_stat = status;
	}

	if (rx_stat) {
		FUNC0();
		status = FUNC2(sport->dma_rx_chan);
		if (status & (DMA_DONE|DMA_ERR))
			FUNC1(sport->dma_rx_chan);
		FUNC0();
		*rx_stat = status;
	}

	if (tx_stat) {
		FUNC0();
		status = FUNC2(sport->dma_tx_chan);
		if (status & (DMA_DONE|DMA_ERR))
			FUNC1(sport->dma_tx_chan);
		FUNC0();
		*tx_stat = status;
	}

	return 0;
}