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
struct net_bridge_mdb_entry {scalar_t__ queries_sent; int /*<<< orphan*/  query_timer; int /*<<< orphan*/  addr; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_last_member_count; scalar_t__ multicast_last_member_interval; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct net_bridge*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct net_bridge_mdb_entry *mp)
{
	struct net_bridge *br = mp->br;
	struct sk_buff *skb;

	skb = FUNC0(br, &mp->addr);
	if (!skb)
		goto timer;

	FUNC2(skb);

timer:
	if (++mp->queries_sent < br->multicast_last_member_count)
		FUNC1(&mp->query_timer,
			  jiffies + br->multicast_last_member_interval);
}