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
typedef  size_t u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t max_queue_sz; int /*<<< orphan*/  sent_bundles; int /*<<< orphan*/  bearer_congs; } ;
struct link {size_t out_queue_size; size_t* queue_limit; int /*<<< orphan*/  b_ptr; struct sk_buff* next_out; TYPE_1__ stats; int /*<<< orphan*/  addr; struct sk_buff* last_out; scalar_t__ unacked_window; int /*<<< orphan*/  media_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ CHANGEOVER_PROTOCOL ; 
 size_t CONN_MANAGER ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  MSG_BUNDLER ; 
 scalar_t__ MSG_FRAGMENTER ; 
 int /*<<< orphan*/  OPEN_MSG ; 
 size_t TIPC_CRITICAL_IMPORTANCE ; 
 struct sk_buff* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct link*,struct sk_buff*,struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct link*,struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct link*) ; 
 size_t FUNC7 (struct link*) ; 
 int FUNC8 (struct link*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 size_t FUNC14 (struct tipc_msg*) ; 
 size_t FUNC15 (struct tipc_msg*) ; 
 scalar_t__ FUNC16 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct link*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct link*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct link*) ; 
 int FUNC22 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct link*) ; 
 int FUNC24 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 

int FUNC27(struct link *l_ptr, struct sk_buff *buf)
{
	struct tipc_msg *msg = FUNC2(buf);
	u32 size = FUNC14(msg);
	u32 dsz = FUNC9(msg);
	u32 queue_size = l_ptr->out_queue_size;
	u32 imp = FUNC15(msg);
	u32 queue_limit = l_ptr->queue_limit[imp];
	u32 max_packet = FUNC7(l_ptr);

	FUNC13(msg, tipc_own_addr);	/* If routed message */

	/* Match msg importance against queue limits: */

	if (FUNC25(queue_size >= queue_limit)) {
		if (imp <= TIPC_CRITICAL_IMPORTANCE) {
			return FUNC8(l_ptr, FUNC12(msg),
						  size);
		}
		FUNC10(msg, "TIPC: Congestion, throwing away\n");
		FUNC1(buf);
		if (imp > CONN_MANAGER) {
			FUNC26("Resetting link <%s>, send queue full", l_ptr->name);
			FUNC23(l_ptr);
		}
		return dsz;
	}

	/* Fragmentation needed ? */

	if (size > max_packet)
		return FUNC24(l_ptr, buf);

	/* Packet can be queued or sent: */

	if (queue_size > l_ptr->stats.max_queue_sz)
		l_ptr->stats.max_queue_sz = queue_size;

	if (FUNC3(!FUNC19(l_ptr->b_ptr, l_ptr) &&
		   !FUNC6(l_ptr))) {
		FUNC4(l_ptr, buf, msg);

		if (FUNC3(FUNC22(l_ptr->b_ptr, buf, &l_ptr->media_addr))) {
			l_ptr->unacked_window = 0;
		} else {
			FUNC21(l_ptr->b_ptr, l_ptr);
			l_ptr->stats.bearer_congs++;
			l_ptr->next_out = buf;
		}
		return dsz;
	}
	/* Congestion: can message be bundled ?: */

	if ((FUNC16(msg) != CHANGEOVER_PROTOCOL) &&
	    (FUNC16(msg) != MSG_FRAGMENTER)) {

		/* Try adding message to an existing bundle */

		if (l_ptr->next_out &&
		    FUNC5(l_ptr, l_ptr->last_out, buf)) {
			FUNC20(l_ptr->b_ptr, l_ptr);
			return dsz;
		}

		/* Try creating a new bundle */

		if (size <= max_packet * 2 / 3) {
			struct sk_buff *bundler = FUNC0(max_packet);
			struct tipc_msg bundler_hdr;

			if (bundler) {
				FUNC11(&bundler_hdr, MSG_BUNDLER, OPEN_MSG,
					 INT_H_SIZE, l_ptr->addr);
				FUNC17(bundler, &bundler_hdr,
							INT_H_SIZE);
				FUNC18(bundler, INT_H_SIZE);
				FUNC5(l_ptr, bundler, buf);
				buf = bundler;
				msg = FUNC2(buf);
				l_ptr->stats.sent_bundles++;
			}
		}
	}
	if (!l_ptr->next_out)
		l_ptr->next_out = buf;
	FUNC4(l_ptr, buf, msg);
	FUNC20(l_ptr->b_ptr, l_ptr);
	return dsz;
}