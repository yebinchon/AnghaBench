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
struct sk_buff {scalar_t__ truesize; } ;
struct netns_frags {int /*<<< orphan*/  mem; } ;
struct inet_frags {int /*<<< orphan*/  (* skb_free ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC3(struct netns_frags *nf, struct inet_frags *f,
		struct sk_buff *skb, int *work)
{
	if (work)
		*work -= skb->truesize;

	FUNC0(skb->truesize, &nf->mem);
	if (f->skb_free)
		f->skb_free(skb);
	FUNC1(skb);
}