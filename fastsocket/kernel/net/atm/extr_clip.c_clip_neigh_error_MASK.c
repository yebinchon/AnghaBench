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
struct neighbour {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_HOST_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct neighbour *neigh, struct sk_buff *skb)
{
#ifndef CONFIG_ATM_CLIP_NO_ICMP
	FUNC0(skb, ICMP_DEST_UNREACH, ICMP_HOST_UNREACH, 0);
#endif
	FUNC1(skb);
}