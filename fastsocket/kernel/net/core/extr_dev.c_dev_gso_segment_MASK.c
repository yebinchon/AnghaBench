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
struct sk_buff {int /*<<< orphan*/  destructor; struct sk_buff* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  destructor; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  dev_gso_skb_destructor ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, int features)
{
	struct sk_buff *segs;

	segs = FUNC3(skb, features);

	/* Verifying header integrity only. */
	if (!segs)
		return 0;

	if (FUNC1(segs))
		return FUNC2(segs);

	skb->next = segs;
	FUNC0(skb)->destructor = skb->destructor;
	skb->destructor = dev_gso_skb_destructor;

	return 0;
}