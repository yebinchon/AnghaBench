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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct br2684_vcc {int /*<<< orphan*/  (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 struct br2684_vcc* FUNC0 (struct atm_vcc*) ; 
 scalar_t__ FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct atm_vcc*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct br2684_vcc *brvcc = FUNC0(vcc);
	struct net_device *net_dev = skb->dev;

	FUNC3("br2684_pop(vcc %p ; net_dev %p )\n", vcc, net_dev);
	brvcc->old_pop(vcc, skb);

	if (!net_dev)
		return;

	if (FUNC1(vcc, 0))
		FUNC2(net_dev);

}