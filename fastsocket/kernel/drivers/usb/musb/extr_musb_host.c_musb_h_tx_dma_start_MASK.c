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
typedef  int u16 ;
struct musb_hw_ep {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_TXCSR ; 
 int MUSB_TXCSR_DMAENAB ; 
 int MUSB_TXCSR_DMAMODE ; 
 int MUSB_TXCSR_H_WZC_BITS ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct musb_hw_ep *ep)
{
	u16	txcsr;

	/* NOTE: no locks here; caller should lock and select EP */
	txcsr = FUNC1(ep->regs, MUSB_TXCSR);
	txcsr |= MUSB_TXCSR_DMAENAB | MUSB_TXCSR_H_WZC_BITS;
	if (FUNC0())
		txcsr |= MUSB_TXCSR_DMAMODE;
	FUNC2(ep->regs, MUSB_TXCSR, txcsr);
}