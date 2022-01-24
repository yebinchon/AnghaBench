#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct net2280 {TYPE_2__ gadget; scalar_t__ enabled; scalar_t__ region; scalar_t__ regs; scalar_t__ got_irq; scalar_t__ requests; TYPE_1__* ep; int /*<<< orphan*/  driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_dma; int /*<<< orphan*/  dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net2280*,char*) ; 
 int /*<<< orphan*/  dev_attr_registers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net2280*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net2280*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct net2280* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * the_controller ; 

__attribute__((used)) static void FUNC15 (struct pci_dev *pdev)
{
	struct net2280		*dev = FUNC8 (pdev);

	FUNC0(dev->driver);

	/* then clean up the resources we allocated during probe() */
	FUNC6 (dev);
	if (dev->requests) {
		int		i;
		for (i = 1; i < 5; i++) {
			if (!dev->ep [i].dummy)
				continue;
			FUNC10 (dev->requests, dev->ep [i].dummy,
					dev->ep [i].td_dma);
		}
		FUNC9 (dev->requests);
	}
	if (dev->got_irq)
		FUNC4 (pdev->irq, dev);
	if (dev->regs)
		FUNC5 (dev->regs);
	if (dev->region)
		FUNC14 (FUNC12 (pdev, 0),
				FUNC11 (pdev, 0));
	if (dev->enabled)
		FUNC7 (pdev);
	FUNC3 (&dev->gadget.dev);
	FUNC2 (&pdev->dev, &dev_attr_registers);
	FUNC13 (pdev, NULL);

	FUNC1 (dev, "unbind\n");

	the_controller = NULL;
}