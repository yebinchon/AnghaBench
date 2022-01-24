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
struct rndis_packet_msg_type {int dummy; } ;
struct gether {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct gether *port,
					struct sk_buff *skb)
{
	struct sk_buff *skb2;

	skb2 = FUNC2(skb, sizeof(struct rndis_packet_msg_type));
	if (skb2)
		FUNC1(skb2);

	FUNC0(skb);
	return skb2;
}