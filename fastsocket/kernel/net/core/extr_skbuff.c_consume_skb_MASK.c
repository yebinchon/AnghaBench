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
struct sk_buff {int /*<<< orphan*/  users; int /*<<< orphan*/  pool_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct sk_buff *skb)
{
	if (FUNC7(!skb))
		return;
	FUNC0("Try to consum skb[%d] 0x%p with user reference %d\n", skb->pool_id, skb, FUNC3(&skb->users));
	if (FUNC4(FUNC3(&skb->users) == 1))
		FUNC5();
	else if (FUNC4(!FUNC2(&skb->users)))
		return;
	FUNC6(skb);
	FUNC1(skb);
}