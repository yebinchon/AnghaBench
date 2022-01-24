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
struct TYPE_2__ {scalar_t__ gap_after; scalar_t__ gap_to; struct sk_buff* deferred_head; } ;
struct tipc_node {TYPE_1__ bclink; } ;
struct sk_buff {struct sk_buff* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 struct tipc_node* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_node*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(u32 dest, u32 sender_tag, u32 gap_after, u32 gap_to)
{
	struct tipc_node *n_ptr = FUNC7(dest);
	u32 my_after, my_to;

	if (FUNC11(!n_ptr || !FUNC8(n_ptr)))
		return;
	FUNC9(n_ptr);
	/*
	 * Modify gap to suppress unnecessary NACKs from this node
	 */
	my_after = n_ptr->bclink.gap_after;
	my_to = n_ptr->bclink.gap_to;

	if (FUNC5(gap_after, my_after)) {
		if (FUNC4(my_after, gap_to) && FUNC4(gap_to, my_to))
			n_ptr->bclink.gap_after = gap_to;
		else if (FUNC5(my_to, gap_to))
			n_ptr->bclink.gap_to = n_ptr->bclink.gap_after;
	} else if (FUNC5(gap_after, my_to)) {
		if (FUNC5(my_to, gap_to))
			n_ptr->bclink.gap_to = gap_after;
	} else {
		/*
		 * Expand gap if missing bufs not in deferred queue:
		 */
		struct sk_buff *buf = n_ptr->bclink.deferred_head;
		u32 prev = n_ptr->bclink.gap_to;

		for (; buf; buf = buf->next) {
			u32 seqno = FUNC3(buf);

			if (FUNC6(seqno - prev) != 1) {
				buf = NULL;
				break;
			}
			if (seqno == gap_after)
				break;
			prev = seqno;
		}
		if (buf == NULL)
			n_ptr->bclink.gap_to = gap_after;
	}
	/*
	 * Some nodes may send a complementary NACK now:
	 */
	if (FUNC0(sender_tag + 1)) {
		if (n_ptr->bclink.gap_to != n_ptr->bclink.gap_after) {
			FUNC1(n_ptr);
			FUNC2(n_ptr);
		}
	}
	FUNC10(n_ptr);
}