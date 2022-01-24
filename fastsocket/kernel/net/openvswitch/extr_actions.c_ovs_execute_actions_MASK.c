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
struct sw_flow_actions {int /*<<< orphan*/  actions_len; int /*<<< orphan*/  actions; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tun_key; TYPE_1__* flow; } ;
struct TYPE_3__ {int /*<<< orphan*/  sf_acts; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct datapath*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sw_flow_actions* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct datapath *dp, struct sk_buff *skb)
{
	struct sw_flow_actions *acts = FUNC2(FUNC0(skb)->flow->sf_acts);

	FUNC0(skb)->tun_key = NULL;
	return FUNC1(dp, skb, acts->actions,
					 acts->actions_len, false);
}