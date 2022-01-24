#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net2280_ep {TYPE_1__* dma; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  dmastat; } ;

/* Variables and functions */
 int DMA_ABORT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net2280_ep*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (struct net2280_ep *ep)
{
	/* abort the current transfer */
	if (FUNC0 (!FUNC1 (&ep->queue))) {
		/* FIXME work around errata 0121, 0122, 0124 */
		FUNC5 ((1 << DMA_ABORT), &ep->dma->dmastat);
		FUNC3 (ep->dma);
	} else
		FUNC4 (ep->dma);
	FUNC2 (ep);
}