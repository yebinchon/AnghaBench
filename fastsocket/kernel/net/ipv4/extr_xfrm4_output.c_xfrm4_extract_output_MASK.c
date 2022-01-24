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
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_3__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 

int FUNC4(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;

	err = FUNC3(skb);
	if (err)
		return err;

	FUNC0(skb)->protocol = FUNC1(skb)->protocol;

	return FUNC2(skb);
}