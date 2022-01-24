#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ last_in; scalar_t__ gap_after; scalar_t__ gap_to; scalar_t__ nack_sync; int /*<<< orphan*/  deferred_tail; struct sk_buff* deferred_head; int /*<<< orphan*/  defragm; int /*<<< orphan*/  supported; } ;
struct tipc_node {TYPE_2__ bclink; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  duplicates; int /*<<< orphan*/  deferred_recv; int /*<<< orphan*/  recv_fragmented; int /*<<< orphan*/  recv_fragments; int /*<<< orphan*/  recv_bundled; int /*<<< orphan*/  recv_bundles; int /*<<< orphan*/  sent_acks; int /*<<< orphan*/  recv_info; int /*<<< orphan*/  recv_nacks; } ;
struct TYPE_8__ {TYPE_3__ stats; TYPE_1__* owner; } ;
struct TYPE_5__ {struct tipc_node* next; } ;

/* Variables and functions */
 scalar_t__ BCAST_PROTOCOL ; 
 scalar_t__ MSG_BUNDLER ; 
 scalar_t__ MSG_FRAGMENTER ; 
 int TIPC_BCAST_LOSS_RATE ; 
 int /*<<< orphan*/  bc_lock ; 
 TYPE_4__* bcl ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct tipc_msg* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC16 (struct tipc_msg*) ; 
 int FUNC17 (struct tipc_msg*) ; 
 scalar_t__ FUNC18 (struct tipc_msg*) ; 
 scalar_t__ FUNC19 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_msg*) ; 
 scalar_t__ FUNC21 (struct tipc_msg*) ; 
 scalar_t__ FUNC22 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct sk_buff**,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,struct sk_buff**,struct tipc_msg**) ; 
 scalar_t__ tipc_net_id ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*) ; 
 struct tipc_node* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC33 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC34 (struct tipc_node*) ; 
 scalar_t__ tipc_own_addr ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC36 (int) ; 

void FUNC37(struct sk_buff *buf)
{
#if (TIPC_BCAST_LOSS_RATE)
	static int rx_count = 0;
#endif
	struct tipc_msg *msg = FUNC6(buf);
	struct tipc_node* node = FUNC31(FUNC20(msg));
	u32 next_in;
	u32 seqno;
	struct sk_buff *deferred;

	FUNC15(msg, "<BC<<<");

	if (FUNC36(!node || !FUNC32(node) || !node->bclink.supported ||
		     (FUNC18(msg) != tipc_net_id))) {
		FUNC5(buf);
		return;
	}

	if (FUNC36(FUNC22(msg) == BCAST_PROTOCOL)) {
		FUNC15(msg, "<BCNACK<<<");
		if (FUNC16(msg) == tipc_own_addr) {
			FUNC33(node);
			FUNC25(node, FUNC11(msg));
			FUNC34(node);
			FUNC23(&bc_lock);
			bcl->stats.recv_nacks++;
			bcl->owner->next = node;   /* remember requestor */
			FUNC1(FUNC13(msg),
					      FUNC14(msg));
			bcl->owner->next = NULL;
			FUNC24(&bc_lock);
		} else {
			FUNC26(FUNC16(msg),
					      FUNC12(msg),
					      FUNC13(msg),
					      FUNC14(msg));
		}
		FUNC5(buf);
		return;
	}

#if (TIPC_BCAST_LOSS_RATE)
	if (++rx_count == TIPC_BCAST_LOSS_RATE) {
		rx_count = 0;
		buf_discard(buf);
		return;
	}
#endif

	FUNC33(node);
receive:
	deferred = node->bclink.deferred_head;
	next_in = FUNC10(node->bclink.last_in + 1);
	seqno = FUNC21(msg);

	if (FUNC9(seqno == next_in)) {
		bcl->stats.recv_info++;
		node->bclink.last_in++;
		FUNC4(node);
		if (FUNC36(FUNC0(seqno))) {
			FUNC2(node);
			bcl->stats.sent_acks++;
		}
		if (FUNC9(FUNC17(msg))) {
			FUNC34(node);
			FUNC35(buf, NULL);
		} else if (FUNC22(msg) == MSG_BUNDLER) {
			bcl->stats.recv_bundles++;
			bcl->stats.recv_bundled += FUNC19(msg);
			FUNC34(node);
			FUNC28(buf);
		} else if (FUNC22(msg) == MSG_FRAGMENTER) {
			bcl->stats.recv_fragments++;
			if (FUNC29(&node->bclink.defragm,
						    &buf, &msg))
				bcl->stats.recv_fragmented++;
			FUNC34(node);
			FUNC30(buf);
		} else {
			FUNC34(node);
			FUNC30(buf);
		}
		if (deferred && (FUNC7(deferred) == FUNC10(next_in + 1))) {
			FUNC33(node);
			buf = deferred;
			msg = FUNC6(buf);
			node->bclink.deferred_head = deferred->next;
			goto receive;
		}
		return;
	} else if (FUNC8(next_in, seqno)) {
		u32 gap_after = node->bclink.gap_after;
		u32 gap_to = node->bclink.gap_to;

		if (FUNC27(&node->bclink.deferred_head,
					&node->bclink.deferred_tail,
					buf)) {
			node->bclink.nack_sync++;
			bcl->stats.deferred_recv++;
			if (seqno == FUNC10(gap_after + 1))
				node->bclink.gap_after = seqno;
			else if (FUNC8(gap_after, seqno) && FUNC8(seqno, gap_to))
				node->bclink.gap_to = seqno;
		}
		if (FUNC0(node->bclink.nack_sync)) {
			if (gap_to != gap_after)
				FUNC3(node);
			FUNC4(node);
		}
	} else {
		bcl->stats.duplicates++;
		FUNC5(buf);
	}
	FUNC34(node);
}