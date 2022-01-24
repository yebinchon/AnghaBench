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
struct net_device {int mtu; int /*<<< orphan*/  dev_addr; } ;
struct et131x_adapter {int RegistryJumboPacket; int Flags; int /*<<< orphan*/  CurrentAddress; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct et131x_adapter*) ; 
 int fMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct et131x_adapter* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 

int FUNC19(struct net_device *netdev, int new_mtu)
{
	int result = 0;
	struct et131x_adapter *adapter = FUNC16(netdev);

	/* Make sure the requested MTU is valid */
	if (new_mtu < 64 || new_mtu > 9216)
		return -EINVAL;

	/* Stop the netif queue */
	FUNC17(netdev);

	/* Stop the Tx and Rx DMA engines */
	FUNC9(adapter);
	FUNC13(adapter);

	/* Disable device interrupts */
	FUNC4(adapter);
	FUNC7(adapter);
	FUNC6(adapter);

	/* Set the new MTU */
	netdev->mtu = new_mtu;

	/* Free Rx DMA memory */
	FUNC2(adapter);

	/* Set the config parameter for Jumbo Packet support */
	adapter->RegistryJumboPacket = new_mtu + 14;
	FUNC12(adapter);

	/* Alloc and init Rx DMA memory */
	result = FUNC1(adapter);
	if (result != 0) {
		FUNC0(&adapter->pdev->dev,
			"Change MTU failed; couldn't re-alloc DMA memory\n");
		return result;
	}

	FUNC8(adapter);

	FUNC11(adapter);
	FUNC15(netdev->dev_addr, adapter->CurrentAddress, ETH_ALEN);

	/* Init the device with the new settings */
	FUNC3(adapter);

	/* Enable interrupts */
	if (adapter->Flags & fMP_ADAPTER_INTERRUPT_IN_USE)
		FUNC5(adapter);

	/* Restart the Tx and Rx DMA engines */
	FUNC10(adapter);
	FUNC14(adapter);

	/* Restart the netif queue */
	FUNC18(netdev);
	return result;
}