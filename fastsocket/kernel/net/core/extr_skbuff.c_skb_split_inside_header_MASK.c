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
struct sk_buff {scalar_t__ len; scalar_t__ data_len; } ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__ const,int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__ const) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC4(struct sk_buff *skb,
					   struct sk_buff* skb1,
					   const u32 len, const int pos)
{
	int i;

	FUNC0(skb, len, FUNC1(skb1, pos - len),
					 pos - len);
	/* And move data appendix as is. */
	for (i = 0; i < FUNC3(skb)->nr_frags; i++)
		FUNC3(skb1)->frags[i] = FUNC3(skb)->frags[i];

	FUNC3(skb1)->nr_frags = FUNC3(skb)->nr_frags;
	FUNC3(skb)->nr_frags  = 0;
	skb1->data_len		   = skb->data_len;
	skb1->len		   += skb1->data_len;
	skb->data_len		   = 0;
	skb->len		   = len;
	FUNC2(skb, len);
}