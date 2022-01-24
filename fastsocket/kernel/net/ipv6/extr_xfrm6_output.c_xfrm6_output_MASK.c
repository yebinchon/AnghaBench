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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  __xfrm6_output ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

int FUNC2(struct sk_buff *skb)
{
	return FUNC0(PF_INET6, NF_INET_POST_ROUTING, skb, NULL, FUNC1(skb)->dev,
		       __xfrm6_output);
}