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
struct sk_buff {int len; } ;
struct rfcomm_dlc {scalar_t__ state; int mtu; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int,int) ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  RFCOMM_SCHED_TX ; 
 int /*<<< orphan*/  RFCOMM_TX_THROTTLED ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct rfcomm_dlc *d, struct sk_buff *skb)
{
	int len = skb->len;

	if (d->state != BT_CONNECTED)
		return -ENOTCONN;

	FUNC0("dlc %p mtu %d len %d", d, d->mtu, len);

	if (len > d->mtu)
		return -EINVAL;

	FUNC1(skb, d->addr);
	FUNC3(&d->tx_queue, skb);

	if (!FUNC4(RFCOMM_TX_THROTTLED, &d->flags))
		FUNC2(RFCOMM_SCHED_TX);
	return len;
}