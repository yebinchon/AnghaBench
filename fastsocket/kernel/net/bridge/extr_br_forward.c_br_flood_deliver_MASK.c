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
 int /*<<< orphan*/  __br_deliver ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct net_bridge *br, struct sk_buff *skb)
{
	FUNC0(br, skb, NULL, __br_deliver);
}