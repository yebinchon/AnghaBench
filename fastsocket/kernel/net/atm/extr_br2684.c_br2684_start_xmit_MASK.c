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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct br2684_vcc {int dummy; } ;
struct br2684_dev {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 struct br2684_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,struct br2684_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  devs_lock ; 
 struct br2684_vcc* FUNC3 (struct sk_buff*,struct br2684_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
				     struct net_device *dev)
{
	struct br2684_dev *brdev = FUNC0(dev);
	struct br2684_vcc *brvcc;

	FUNC4("br2684_start_xmit, skb_dst(skb)=%p\n", FUNC7(skb));
	FUNC5(&devs_lock);
	brvcc = FUNC3(skb, brdev);
	if (brvcc == NULL) {
		FUNC4("no vcc attached to dev %s\n", dev->name);
		dev->stats.tx_errors++;
		dev->stats.tx_carrier_errors++;
		/* netif_stop_queue(dev); */
		FUNC2(skb);
		FUNC6(&devs_lock);
		return NETDEV_TX_OK;
	}
	if (!FUNC1(skb, dev, brvcc)) {
		/*
		 * We should probably use netif_*_queue() here, but that
		 * involves added complication.  We need to walk before
		 * we can run.
		 *
		 * Don't free here! this pointer might be no longer valid!
		 */
		dev->stats.tx_errors++;
		dev->stats.tx_fifo_errors++;
	}
	FUNC6(&devs_lock);
	return NETDEV_TX_OK;
}