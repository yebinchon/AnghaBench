#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* supported; char* acked; char* last_in; char* gap_after; char* gap_to; char* nack_sync; } ;
struct tipc_node {scalar_t__ addr; TYPE_2__ bclink; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct link {scalar_t__ stale_count; TYPE_1__* owner; scalar_t__ addr; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ handle; } ;
struct TYPE_4__ {struct tipc_node* next; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_OUTPUT ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct link*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ link_reset_all ; 
 char* FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct link*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct link *l_ptr, struct sk_buff *buf)
{
	struct tipc_msg *msg = FUNC2(buf);

	FUNC11("Retransmission failure on link <%s>\n", l_ptr->name);
	FUNC7(TIPC_OUTPUT, msg, ">RETR-FAIL>");

	if (l_ptr->addr) {

		/* Handle failure on standard link */

		FUNC3(l_ptr, TIPC_OUTPUT, "Resetting link\n");
		FUNC6(l_ptr);

	} else {

		/* Handle failure on broadcast link */

		struct tipc_node *n_ptr;
		char addr_string[16];

		FUNC10(TIPC_OUTPUT, "Msg seq number: %u,  ", FUNC4(msg));
		FUNC10(TIPC_OUTPUT, "Outstanding acks: %lu\n",
				     (unsigned long) FUNC0(buf)->handle);

		n_ptr = l_ptr->owner->next;
		FUNC8(n_ptr);

		FUNC1(addr_string, n_ptr->addr);
		FUNC10(TIPC_OUTPUT, "Multicast link info for %s\n", addr_string);
		FUNC10(TIPC_OUTPUT, "Supported: %d,  ", n_ptr->bclink.supported);
		FUNC10(TIPC_OUTPUT, "Acked: %u\n", n_ptr->bclink.acked);
		FUNC10(TIPC_OUTPUT, "Last in: %u,  ", n_ptr->bclink.last_in);
		FUNC10(TIPC_OUTPUT, "Gap after: %u,  ", n_ptr->bclink.gap_after);
		FUNC10(TIPC_OUTPUT, "Gap to: %u\n", n_ptr->bclink.gap_to);
		FUNC10(TIPC_OUTPUT, "Nack sync: %u\n\n", n_ptr->bclink.nack_sync);

		FUNC5((Handler)link_reset_all, (unsigned long)n_ptr->addr);

		FUNC9(n_ptr);

		l_ptr->stale_count = 0;
	}
}