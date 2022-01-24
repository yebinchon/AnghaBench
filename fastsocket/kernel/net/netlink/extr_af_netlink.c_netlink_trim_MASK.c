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
struct sk_buff {int end; int tail; int truesize; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC5(struct sk_buff *skb,
					   gfp_t allocation)
{
	int delta;

	FUNC3(skb);

	delta = skb->end - skb->tail;
	if (delta * 2 < skb->truesize)
		return skb;

	if (FUNC4(skb)) {
		struct sk_buff *nskb = FUNC2(skb, allocation);
		if (!nskb)
			return skb;
		FUNC0(skb);
		skb = nskb;
	}

	if (!FUNC1(skb, 0, -delta, allocation))
		skb->truesize -= delta;

	return skb;
}