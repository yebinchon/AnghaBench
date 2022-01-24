#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  nack_sync; int /*<<< orphan*/  gap_to; int /*<<< orphan*/  gap_after; int /*<<< orphan*/  last_in; } ;
struct tipc_node {TYPE_2__ bclink; int /*<<< orphan*/  addr; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  bearer; } ;
struct TYPE_6__ {int /*<<< orphan*/  bearer_congs; int /*<<< orphan*/  sent_nacks; } ;
struct TYPE_8__ {TYPE_1__ stats; struct sk_buff* proto_msg_queue; int /*<<< orphan*/  b_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCAST_PROTOCOL ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  STATE_MSG ; 
 TYPE_5__* bcbearer ; 
 TYPE_3__* bcl ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  tipc_own_tag ; 

__attribute__((used)) static void FUNC13(struct tipc_node *n_ptr)
{
	struct sk_buff *buf;
	struct tipc_msg *msg;

	if (!FUNC3(n_ptr->bclink.gap_after, n_ptr->bclink.gap_to))
		return;

	buf = FUNC0(INT_H_SIZE);
	if (buf) {
		msg = FUNC2(buf);
		FUNC5(msg, BCAST_PROTOCOL, STATE_MSG,
			 INT_H_SIZE, n_ptr->addr);
		FUNC10(msg, tipc_net_id);
		FUNC6(msg, FUNC4(n_ptr->bclink.last_in));
		FUNC8(msg, n_ptr->bclink.gap_after);
		FUNC9(msg, n_ptr->bclink.gap_to);
		FUNC7(msg, tipc_own_tag);

		if (FUNC12(&bcbearer->bearer, buf, NULL)) {
			bcl->stats.sent_nacks++;
			FUNC1(buf);
		} else {
			FUNC11(bcl->b_ptr, bcl);
			bcl->proto_msg_queue = buf;
			bcl->stats.bearer_congs++;
		}

		/*
		 * Ensure we doesn't send another NACK msg to the node
		 * until 16 more deferred messages arrive from it
		 * (i.e. helps prevent all nodes from NACK'ing at same time)
		 */

		n_ptr->bclink.nack_sync = tipc_own_tag;
	}
}