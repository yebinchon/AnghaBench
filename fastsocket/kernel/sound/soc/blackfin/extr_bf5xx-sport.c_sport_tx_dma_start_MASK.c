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
struct sport_device {TYPE_1__* curr_tx_desc; int /*<<< orphan*/  dma_tx_chan; TYPE_1__* dma_tx_desc; TYPE_1__* dummy_tx_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  start_addr; struct TYPE_2__* next_desc_addr; } ;

/* Variables and functions */
 int DMAFLOW_LARGE ; 
 int NDSIZE_9 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int WDSIZE_32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct sport_device *sport, int dummy)
{
	if (dummy) {
		sport->dummy_tx_desc->next_desc_addr = sport->dummy_tx_desc;
		sport->curr_tx_desc = sport->dummy_tx_desc;
	} else
		sport->curr_tx_desc = sport->dma_tx_desc;

	FUNC3(sport->dma_tx_chan, sport->curr_tx_desc);
	FUNC4(sport->dma_tx_chan, 0);
	FUNC5(sport->dma_tx_chan, 0);
	FUNC1(sport->dma_tx_chan,
			(DMAFLOW_LARGE | NDSIZE_9 | WDSIZE_32));
	FUNC2(sport->dma_tx_chan, sport->curr_tx_desc->start_addr);
	FUNC0();

	return 0;
}