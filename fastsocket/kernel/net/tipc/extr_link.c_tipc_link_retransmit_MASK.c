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
typedef  void* u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  bearer_congs; int /*<<< orphan*/  retransmitted; } ;
struct link {scalar_t__ last_retransmitted; int stale_count; void* retransm_queue_size; void* retransm_queue_head; TYPE_3__ stats; int /*<<< orphan*/  b_ptr; int /*<<< orphan*/  media_addr; TYPE_2__* owner; scalar_t__ next_in_no; struct sk_buff* next_out; } ;
struct TYPE_4__ {int /*<<< orphan*/  last_in; } ;
struct TYPE_5__ {TYPE_1__ bclink; } ;

/* Variables and functions */
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,struct link*) ; 
 int /*<<< orphan*/  FUNC2 (struct link*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct link*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct link*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 

void FUNC13(struct link *l_ptr, struct sk_buff *buf,
			  u32 retransmits)
{
	struct tipc_msg *msg;

	if (!buf)
		return;

	msg = FUNC0(buf);

	FUNC1("Retransmitting %u in link %x\n", retransmits, l_ptr);

	if (FUNC10(l_ptr->b_ptr, l_ptr)) {
		if (!FUNC9(buf)) {
			FUNC5(msg, ">NO_RETR->BCONG>");
			FUNC2(l_ptr, "   ");
			l_ptr->retransm_queue_head = FUNC6(msg);
			l_ptr->retransm_queue_size = retransmits;
			return;
		} else {
			/* Don't retransmit if driver already has the buffer */
		}
	} else {
		/* Detect repeated retransmit failures on uncongested bearer */

		if (l_ptr->last_retransmitted == FUNC6(msg)) {
			if (++l_ptr->stale_count > 100) {
				FUNC3(l_ptr, buf);
				return;
			}
		} else {
			l_ptr->last_retransmitted = FUNC6(msg);
			l_ptr->stale_count = 1;
		}
	}

	while (retransmits && (buf != l_ptr->next_out) && buf && !FUNC9(buf)) {
		msg = FUNC0(buf);
		FUNC7(msg, FUNC4(l_ptr->next_in_no - 1));
		FUNC8(msg, l_ptr->owner->bclink.last_in);
		if (FUNC12(l_ptr->b_ptr, buf, &l_ptr->media_addr)) {
			FUNC5(FUNC0(buf), ">RETR>");
			buf = buf->next;
			retransmits--;
			l_ptr->stats.retransmitted++;
		} else {
			FUNC11(l_ptr->b_ptr, l_ptr);
			l_ptr->stats.bearer_congs++;
			l_ptr->retransm_queue_head = FUNC6(FUNC0(buf));
			l_ptr->retransm_queue_size = retransmits;
			return;
		}
	}

	l_ptr->retransm_queue_head = l_ptr->retransm_queue_size = 0;
}