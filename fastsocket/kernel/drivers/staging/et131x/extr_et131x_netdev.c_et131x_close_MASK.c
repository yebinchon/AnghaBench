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
struct net_device {int /*<<< orphan*/  irq; } ;
struct et131x_adapter {int /*<<< orphan*/  ErrorTimer; int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  fMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct et131x_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC5(netdev);

	/* First thing is to stop the queue */
	FUNC6(netdev);

	/* Stop the Tx and Rx DMA engines */
	FUNC2(adapter);
	FUNC3(adapter);

	/* Disable device interrupts */
	FUNC1(adapter);

	/* Deregistering ISR */
	adapter->Flags &= ~fMP_ADAPTER_INTERRUPT_IN_USE;
	FUNC4(netdev->irq, netdev);

	/* Stop the error timer */
	FUNC0(&adapter->ErrorTimer);
	return 0;
}