#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dma_chan; } ;
struct TYPE_4__ {int dma_chan; } ;
struct TYPE_6__ {TYPE_2__ fsib; TYPE_1__ fsia; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORTA_DMA ; 
 int /*<<< orphan*/  PORTB_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* master ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(PORTA_DMA);
	FUNC0(PORTB_DMA);
	FUNC1(PORTA_DMA);
	FUNC1(PORTB_DMA);

	master->fsia.dma_chan = -1;
	master->fsib.dma_chan = -1;
}