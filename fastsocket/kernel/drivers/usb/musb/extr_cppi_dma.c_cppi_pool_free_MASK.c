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
struct cppi_descriptor {int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct cppi_channel {struct cppi_descriptor* last_processed; struct cppi* controller; TYPE_1__ channel; } ;
struct cppi {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DMA_STATUS_UNKNOWN ; 
 struct cppi_descriptor* FUNC0 (struct cppi_channel*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cppi_descriptor*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cppi_channel *c)
{
	struct cppi		*cppi = c->controller;
	struct cppi_descriptor	*bd;

	(void) FUNC1(&c->channel);
	c->channel.status = MUSB_DMA_STATUS_UNKNOWN;
	c->controller = NULL;

	/* free all its bds */
	bd = c->last_processed;
	do {
		if (bd)
			FUNC2(cppi->pool, bd, bd->dma);
		bd = FUNC0(c);
	} while (bd);
	c->last_processed = NULL;
}