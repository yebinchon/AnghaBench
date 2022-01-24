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
struct netdev_tc_txq {unsigned int offset; unsigned int count; } ;
struct netdev_qos_info {struct netdev_tc_txq* tc_to_txq; scalar_t__ num_tc; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct netdev_qos_info qos_data; } ;

/* Variables and functions */
 int TC_BITMASK ; 
 TYPE_1__* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(struct net_device *dev, unsigned int txq)
{
	int i;
	struct netdev_qos_info *qos = &FUNC0(dev)->qos_data;
	struct netdev_tc_txq *tc = &qos->tc_to_txq[0];

	/* If TC0 is invalidated disable TC mapping */
	if (tc->offset + tc->count > txq) {
		FUNC3("Number of in use tx queues changed "
			   "invalidating tc mappings. Priority "
			   "traffic classification disabled!\n");
		qos->num_tc = 0;
		return;
	}

	/* Invalidated prio to tc mappings set to TC0 */
	for (i = 1; i < TC_BITMASK + 1; i++) {
		int q = FUNC1(dev, i);

		tc = &qos->tc_to_txq[q];
		if (tc->offset + tc->count > txq) {
			FUNC3("Number of in use tx queues "
				   "changed. Priority %i to tc "
				   "mapping %i is no longer valid "
				   "setting map to 0\n",
				   i, q);
			FUNC2(dev, i, 0);
		}
	}
}