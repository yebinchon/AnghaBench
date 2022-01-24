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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff **listp)
{
	struct sk_buff *list = *listp;

	*listp = NULL;

	do {
		struct sk_buff *this = list;
		list = list->next;
		FUNC0("Drop frag skb 0x%p\n", this);
		FUNC1(this);
	} while (list);
}