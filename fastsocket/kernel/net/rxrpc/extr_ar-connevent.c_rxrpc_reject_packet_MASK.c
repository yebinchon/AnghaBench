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
struct rxrpc_local {int /*<<< orphan*/  rejecter; int /*<<< orphan*/  reject_queue; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC6(struct rxrpc_local *local, struct sk_buff *skb)
{
	FUNC1(&local->usage);

	if (!FUNC2(&local->usage)) {
		FUNC3("resurrected on reject\n");
		FUNC0();
	}

	FUNC5(&local->reject_queue, skb);
	FUNC4(&local->rejecter);
}