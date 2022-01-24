#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  acked; } ;
struct tipc_node {TYPE_1__ bclink; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_6__ {int next_out; int /*<<< orphan*/  waiting_ports; int /*<<< orphan*/  out_queue_size; struct sk_buff* first_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  bc_lock ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 TYPE_2__* bcl ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct tipc_node *n_ptr, u32 acked)
{
	struct sk_buff *crs;
	struct sk_buff *next;
	unsigned int released = 0;

	if (FUNC4(acked, n_ptr->bclink.acked))
		return;

	FUNC6(&bc_lock);

	/* Skip over packets that node has previously acknowledged */

	crs = bcl->first_out;
	while (crs && FUNC4(FUNC3(crs), n_ptr->bclink.acked)) {
		crs = crs->next;
	}

	/* Update packets that node is now acknowledging */

	while (crs && FUNC4(FUNC3(crs), acked)) {
		next = crs->next;
		FUNC1(crs);
		if (FUNC0(crs) == 0) {
			bcl->first_out = next;
			bcl->out_queue_size--;
			FUNC2(crs);
			released = 1;
		}
		crs = next;
	}
	n_ptr->bclink.acked = acked;

	/* Try resolving broadcast link congestion, if necessary */

	if (FUNC10(bcl->next_out))
		FUNC8(bcl);
	if (FUNC10(released && !FUNC5(&bcl->waiting_ports)))
		FUNC9(bcl, 0);
	FUNC7(&bc_lock);
}