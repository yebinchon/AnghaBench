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
struct TYPE_2__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {scalar_t__ len; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;

/* Variables and functions */
 scalar_t__ XFRM_MODE_TUNNEL ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int FUNC1 (struct sk_buff*,int (*) (struct sk_buff*)) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct dst_entry* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC3(skb);
	struct xfrm_state *x = dst->xfrm;

	if ((x && x->props.mode == XFRM_MODE_TUNNEL) &&
	    ((skb->len > FUNC2(skb) && !FUNC4(skb)) ||
		FUNC0(FUNC3(skb)))) {
			return FUNC1(skb, xfrm6_output_finish);
	}
	return FUNC5(skb);
}