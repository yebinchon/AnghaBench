#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  truesize; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct atm_vcc {scalar_t__ (* send ) (struct atm_vcc*,struct sk_buff*) ;int /*<<< orphan*/  atm_options; } ;
struct TYPE_6__ {int /*<<< orphan*/  atm_options; struct atm_vcc* vcc; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk_wmem_alloc; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct atm_vcc*) ; 
 scalar_t__ FUNC3 (struct atm_vcc*,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;

	FUNC0(skb)->vcc = vcc;
	FUNC0(skb)->atm_options = vcc->atm_options;

	FUNC1(skb->truesize, &FUNC2(vcc)->sk_wmem_alloc);
	if (vcc->send(vcc, skb) < 0) {
		dev->stats.tx_dropped++;
		return;
	}

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;
}