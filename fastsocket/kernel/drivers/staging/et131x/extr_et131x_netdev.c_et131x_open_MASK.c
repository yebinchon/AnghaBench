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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct et131x_adapter {int /*<<< orphan*/  Flags; TYPE_1__* pdev; int /*<<< orphan*/  ErrorTimer; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  et131x_isr ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  fMP_ADAPTER_INTERRUPT_IN_USE ; 
 struct et131x_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

int FUNC8(struct net_device *netdev)
{
	int result = 0;
	struct et131x_adapter *adapter = FUNC5(netdev);

	/* Start the timer to track NIC errors */
	FUNC0(&adapter->ErrorTimer);

	/* Register our IRQ */
	result = FUNC7(netdev->irq, et131x_isr, IRQF_SHARED,
					netdev->name, netdev);
	if (result) {
		FUNC1(&adapter->pdev->dev, "c ould not register IRQ %d\n",
			netdev->irq);
		return result;
	}

	/* Enable the Tx and Rx DMA engines (if not already enabled) */
	FUNC3(adapter);
	FUNC4(adapter);

	/* Enable device interrupts */
	FUNC2(adapter);

	adapter->Flags |= fMP_ADAPTER_INTERRUPT_IN_USE;

	/* We're ready to move some data, so start the queue */
	FUNC6(netdev);
	return result;
}