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
struct TYPE_2__ {void* gap_to; scalar_t__ last_in; void* gap_after; struct sk_buff* deferred_head; } ;
struct tipc_node {TYPE_1__ bclink; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tipc_node *n_ptr)
{
	struct sk_buff *buf = n_ptr->bclink.deferred_head;

	n_ptr->bclink.gap_after = n_ptr->bclink.gap_to =
		FUNC1(n_ptr->bclink.last_in);
	if (FUNC2(buf != NULL))
		n_ptr->bclink.gap_to = FUNC1(FUNC0(buf) - 1);
}