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
struct comedi_device {scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ pdev; scalar_t__ got_regions; scalar_t__ base_addr; int /*<<< orphan*/  ANABuf; int /*<<< orphan*/  RPSBuf; scalar_t__ ai_cmd_running; } ;

/* Variables and functions */
 int ACON1_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DMABUF_SIZE ; 
 int IRQ_GPIO3 ; 
 int IRQ_RPS1 ; 
 int MC1_SHUTDOWN ; 
 int /*<<< orphan*/  P_ACON1 ; 
 int /*<<< orphan*/  P_IER ; 
 int /*<<< orphan*/  P_ISR ; 
 int /*<<< orphan*/  P_MC1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev)
{
	if (devpriv) {
		/* stop ai_command */
		devpriv->ai_cmd_running = 0;

		if (devpriv->base_addr) {
			/* interrupt mask */
			FUNC2(P_IER, 0);	/*  Disable master interrupt. */
			FUNC2(P_ISR, IRQ_GPIO3 | IRQ_RPS1);	/*  Clear board's IRQ status flag. */

			/*  Disable the watchdog timer and battery charger. */
			FUNC3(dev, 0);

			/*  Close all interfaces on 7146 device. */
			FUNC2(P_MC1, MC1_SHUTDOWN);
			FUNC2(P_ACON1, ACON1_BASE);

			FUNC0(dev, &devpriv->RPSBuf, DMABUF_SIZE);
			FUNC0(dev, &devpriv->ANABuf, DMABUF_SIZE);
		}

		if (dev->irq)
			FUNC5(dev->irq, dev);

		if (devpriv->base_addr)
			FUNC6(devpriv->base_addr);

		if (devpriv->pdev) {
			if (devpriv->got_regions)
				FUNC4(devpriv->pdev);
			FUNC7(devpriv->pdev);
		}
	}

	FUNC1("s626_detach: S626 detached!\n");

	return 0;
}