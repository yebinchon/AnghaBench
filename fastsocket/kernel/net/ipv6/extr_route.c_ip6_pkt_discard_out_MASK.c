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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_NOROUTE ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb)
{
	skb->dev = FUNC1(skb)->dev;
	return FUNC0(skb, ICMPV6_NOROUTE, IPSTATS_MIB_OUTNOROUTES);
}