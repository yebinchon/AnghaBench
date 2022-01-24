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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_HOST_ANO ; 
 int /*<<< orphan*/  ICMP_NET_ANO ; 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

void FUNC2(struct sk_buff *skb, int error, u32 gateway)
{
	if (FUNC1(skb)->protocol == IPPROTO_ICMP || error != -EACCES)
		return;

	if (gateway)
		FUNC0(skb, ICMP_DEST_UNREACH, ICMP_NET_ANO, 0);
	else
		FUNC0(skb, ICMP_DEST_UNREACH, ICMP_HOST_ANO, 0);
}