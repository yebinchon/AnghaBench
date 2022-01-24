#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {TYPE_1__* regs; } ;
struct TYPE_6__ {void* expires; } ;
struct TYPE_5__ {int /*<<< orphan*/  sts; int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  UDC_DEVCTL_RDE ; 
 int /*<<< orphan*/  UDC_DEVSTS_RXFIFO_EMPTY ; 
 int UDC_RDE_TIMER_DIV ; 
 int UDC_RDE_TIMER_SECONDS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* jiffies ; 
 int /*<<< orphan*/  on_exit ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int set_rde ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ stop_timer ; 
 TYPE_3__* udc ; 
 int /*<<< orphan*/  udc_irq_spinlock ; 
 TYPE_2__ udc_timer ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long v)
{
	u32 tmp;

	FUNC4(&udc_irq_spinlock);

	if (set_rde > 0) {
		/*
		 * open the fifo if fifo was filled on last timer call
		 * conditionally
		 */
		if (set_rde > 1) {
			/* set RDE to receive setup data */
			tmp = FUNC3(&udc->regs->ctl);
			tmp |= FUNC0(UDC_DEVCTL_RDE);
			FUNC6(tmp, &udc->regs->ctl);
			set_rde = -1;
		} else if (FUNC3(&udc->regs->sts)
				& FUNC0(UDC_DEVSTS_RXFIFO_EMPTY)) {
			/*
			 * if fifo empty setup polling, do not just
			 * open the fifo
			 */
			udc_timer.expires = jiffies + HZ/UDC_RDE_TIMER_DIV;
			if (!stop_timer) {
				FUNC1(&udc_timer);
			}
		} else {
			/*
			 * fifo contains data now, setup timer for opening
			 * the fifo when timer expires to be able to receive
			 * setup packets, when data packets gets queued by
			 * gadget layer then timer will forced to expire with
			 * set_rde=0 (RDE is set in udc_queue())
			 */
			set_rde++;
			/* debug: lhadmot_timer_start = 221070 */
			udc_timer.expires = jiffies + HZ*UDC_RDE_TIMER_SECONDS;
			if (!stop_timer) {
				FUNC1(&udc_timer);
			}
		}

	} else
		set_rde = -1; /* RDE was set by udc_queue() */
	FUNC5(&udc_irq_spinlock);
	if (stop_timer)
		FUNC2(&on_exit);

}