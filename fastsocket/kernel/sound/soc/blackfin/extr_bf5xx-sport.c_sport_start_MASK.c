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
struct sport_device {TYPE_1__* regs; int /*<<< orphan*/  dma_tx_chan; int /*<<< orphan*/  dma_rx_chan; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcr1; int /*<<< orphan*/  rcr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSPEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TSPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sport_device *sport)
{
	FUNC1(sport->dma_rx_chan);
	FUNC1(sport->dma_tx_chan);
	sport->regs->rcr1 |= RSPEN;
	sport->regs->tcr1 |= TSPEN;
	FUNC0();

	return 0;
}