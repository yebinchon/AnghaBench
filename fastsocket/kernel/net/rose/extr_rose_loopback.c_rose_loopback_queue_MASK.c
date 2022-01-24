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
struct sk_buff {int dummy; } ;
struct rose_neigh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  loopback_queue ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC5(struct sk_buff *skb, struct rose_neigh *neigh)
{
	struct sk_buff *skbn;

	skbn = FUNC3(skb, GFP_ATOMIC);

	FUNC0(skb);

	if (skbn != NULL) {
		FUNC4(&loopback_queue, skbn);

		if (!FUNC1())
			FUNC2();
	}

	return 1;
}