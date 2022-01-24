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
struct sk_buff {int dummy; } ;
struct neighbour {scalar_t__ nud_state; int /*<<< orphan*/  arp_queue; int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  updated; int /*<<< orphan*/  tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* error_report ) (struct neighbour*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct neighbour*) ; 
 scalar_t__ NUD_FAILED ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  res_failed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct neighbour *neigh)
{
	struct sk_buff *skb;

	FUNC0(neigh->tbl, res_failed);
	FUNC1("neigh %p is failed.\n", neigh);
	neigh->updated = jiffies;

	/* It is very thin place. report_unreachable is very complicated
	   routine. Particularly, it can hit the same neighbour entry!

	   So that, we try to be accurate and avoid dead loop. --ANK
	 */
	while (neigh->nud_state == NUD_FAILED &&
	       (skb = FUNC2(&neigh->arp_queue)) != NULL) {
		FUNC6(&neigh->lock);
		neigh->ops->error_report(neigh, skb);
		FUNC5(&neigh->lock);
	}
	FUNC3(&neigh->arp_queue);
}