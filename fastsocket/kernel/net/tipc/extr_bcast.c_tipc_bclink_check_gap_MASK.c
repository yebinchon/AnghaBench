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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ gap_after; scalar_t__ gap_to; int /*<<< orphan*/  last_in; int /*<<< orphan*/  supported; } ;
struct tipc_node {TYPE_1__ bclink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct tipc_node *n_ptr, u32 last_sent)
{
	if (!n_ptr->bclink.supported ||
	    FUNC2(last_sent, FUNC3(n_ptr->bclink.last_in)))
		return;

	FUNC1(n_ptr);
	if (n_ptr->bclink.gap_after == n_ptr->bclink.gap_to)
		n_ptr->bclink.gap_to = last_sent;
	FUNC0(n_ptr);
}