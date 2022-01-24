#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct octeon_ethernet {scalar_t__ fau; int /*<<< orphan*/ * tx_free_list; int /*<<< orphan*/  (* poll ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {TYPE_1__* netdev_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ndo_get_stats ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int CVMX_PIP_NUM_INPUT_PORTS ; 
 int HZ ; 
 int /*<<< orphan*/  MAX_SKB_TO_FREE ; 
 TYPE_2__** cvm_oct_device ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_ethernet*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  cvm_oct_poll_timer ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  mdio_sem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct octeon_ethernet* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(unsigned long arg)
{
	int32_t skb_to_free, undo;
	int queues_per_port;
	int qos;
	struct octeon_ethernet *priv;
	static int port;

	if (port >= CVMX_PIP_NUM_INPUT_PORTS) {
		/*
		 * All ports have been polled. Start the next
		 * iteration through the ports in one second.
		 */
		port = 0;
		FUNC5(&cvm_oct_poll_timer, jiffies + HZ);
		return;
	}
	if (!cvm_oct_device[port])
		goto out;

	priv = FUNC6(cvm_oct_device[port]);
	if (priv->poll) {
		/* skip polling if we don't get the lock */
		if (!FUNC4(&mdio_sem)) {
			priv->poll(cvm_oct_device[port]);
			FUNC10(&mdio_sem);
		}
	}

	queues_per_port = FUNC3(port);
	/* Drain any pending packets in the free list */
	for (qos = 0; qos < queues_per_port; qos++) {
		if (FUNC7(&priv->tx_free_list[qos]) == 0)
			continue;
		skb_to_free = FUNC2(priv->fau + qos * 4,
						       MAX_SKB_TO_FREE);
		undo = skb_to_free > 0 ?
			MAX_SKB_TO_FREE : skb_to_free + MAX_SKB_TO_FREE;
		if (undo > 0)
			FUNC1(priv->fau+qos*4, -undo);
		skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ?
			MAX_SKB_TO_FREE : -skb_to_free;
		FUNC0(priv, skb_to_free, qos, 1);
	}
	cvm_oct_device[port]->netdev_ops->ndo_get_stats(cvm_oct_device[port]);

out:
	port++;
	/* Poll the next port in a 50th of a second.
	   This spreads the polling of ports out a little bit */
	FUNC5(&cvm_oct_poll_timer, jiffies + HZ / 50);
}