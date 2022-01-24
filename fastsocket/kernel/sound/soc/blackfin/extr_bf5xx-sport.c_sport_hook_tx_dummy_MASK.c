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
struct sport_device {int dummy_count; TYPE_1__* dummy_tx_desc; TYPE_1__* curr_tx_desc; int /*<<< orphan*/  dma_tx_chan; } ;
struct dmasg {int x_count; TYPE_1__* next_desc_addr; scalar_t__ y_count; } ;
struct TYPE_2__ {struct TYPE_2__* next_desc_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dmasg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static inline int FUNC5(struct sport_device *sport)
{
	struct dmasg *desc, temp_desc;
	unsigned long flags;

	FUNC0(sport->dummy_tx_desc == NULL);
	FUNC0(sport->curr_tx_desc == sport->dummy_tx_desc);

	sport->dummy_tx_desc->next_desc_addr = sport->dummy_tx_desc + 1;

	/* Shorten the time on last normal descriptor */
	FUNC4(flags);
	desc = FUNC2(sport->dma_tx_chan);
	/* Store the descriptor which will be damaged */
	temp_desc = *desc;
	desc->x_count = sport->dummy_count / 2;
	desc->y_count = 0;
	desc->next_desc_addr = sport->dummy_tx_desc;
	FUNC3(flags);
	/* Waiting for dummy buffer descriptor is already hooked*/
	while ((FUNC1(sport->dma_tx_chan) - \
			sizeof(struct dmasg)) != sport->dummy_tx_desc)
		continue;
	sport->curr_tx_desc = sport->dummy_tx_desc;
	/* Restore the damaged descriptor */
	*desc = temp_desc;

	return 0;
}