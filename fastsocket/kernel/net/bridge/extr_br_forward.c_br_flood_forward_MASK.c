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
struct sk_buff {int dummy; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __br_forward ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC1(struct net_bridge *br, struct sk_buff *skb,
		      struct sk_buff *skb2)
{
	FUNC0(br, skb, skb2, __br_forward);
}