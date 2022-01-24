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
struct sk_buff {struct sk_buff* next; } ;
struct dev_gso_cb {int /*<<< orphan*/  (* destructor ) (struct sk_buff*) ;} ;

/* Variables and functions */
 struct dev_gso_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	struct dev_gso_cb *cb;

	do {
		struct sk_buff *nskb = skb->next;

		skb->next = nskb->next;
		nskb->next = NULL;
		FUNC1(nskb);
	} while (skb->next);

	cb = FUNC0(skb);
	if (cb->destructor)
		cb->destructor(skb);
}