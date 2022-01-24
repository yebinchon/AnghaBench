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
struct sk_buff {unsigned int len; int /*<<< orphan*/  csum; } ;
struct TYPE_2__ {scalar_t__ dccph_cscov; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct sk_buff *skb)
{
	unsigned int cov = FUNC0(skb);

	if (cov >= skb->len)
		FUNC1(skb)->dccph_cscov = 0;

	skb->csum = FUNC2(skb, 0, (cov > skb->len)? skb->len : cov, 0);
}