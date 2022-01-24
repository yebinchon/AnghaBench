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
struct sk_buff {int encapsulation; scalar_t__ ip_summed; } ;
struct TYPE_2__ {int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SKB_GSO_GRE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

struct sk_buff *FUNC8(struct sk_buff *skb, bool gre_csum)
{
	int err;

	if (FUNC2(!skb->encapsulation)) {
		/* skb_reset_inner_headers(skb); */
		skb->encapsulation = 1;
	}

	if (FUNC4(skb)) {
		err = FUNC6(skb, GFP_ATOMIC);
		if (FUNC7(err))
			goto error;
		FUNC5(skb)->gso_type |= SKB_GSO_GRE;
		return skb;
	} else if (skb->ip_summed == CHECKSUM_PARTIAL && gre_csum) {
		err = FUNC3(skb);
		if (FUNC7(err))
			goto error;
	} else if (skb->ip_summed != CHECKSUM_PARTIAL)
		skb->ip_summed = CHECKSUM_NONE;

	return skb;
error:
	FUNC1(skb);
	return FUNC0(err);
}