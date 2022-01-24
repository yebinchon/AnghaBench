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
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {scalar_t__ rx_first_oos; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_oos_queue; int /*<<< orphan*/  rx_data_post; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECONNRESET ; 
 int /*<<< orphan*/  RXRPC_CALL_RELEASED ; 
 int RXRPC_CLIENT_INITIATED ; 
 int RXRPC_LAST_PACKET ; 
 int /*<<< orphan*/  RXRPC_SKB_MARK_DATA ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sk_buff*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rxrpc_call*,struct sk_buff*,int,int) ; 
 struct rxrpc_skb_priv* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct rxrpc_call *call)
{
	struct rxrpc_skb_priv *sp;
	struct sk_buff *skb;
	bool terminal;
	int ret;

	FUNC2("{%d,%d}", call->rx_data_post, call->rx_first_oos);

	FUNC10(&call->lock);

	ret = -ECONNRESET;
	if (FUNC12(RXRPC_CALL_RELEASED, &call->flags))
		goto socket_unavailable;

	skb = FUNC7(&call->rx_oos_queue);
	if (skb) {
		sp = FUNC6(skb);

		FUNC1("drain OOS packet %d [%d]",
		       FUNC4(sp->hdr.seq), call->rx_first_oos);

		if (FUNC4(sp->hdr.seq) != call->rx_first_oos) {
			FUNC9(&call->rx_oos_queue, skb);
			call->rx_first_oos = FUNC4(FUNC6(skb)->hdr.seq);
			FUNC1("requeue %p {%u}", skb, call->rx_first_oos);
		} else {
			skb->mark = RXRPC_SKB_MARK_DATA;
			terminal = ((sp->hdr.flags & RXRPC_LAST_PACKET) &&
				!(sp->hdr.flags & RXRPC_CLIENT_INITIATED));
			ret = FUNC5(call, skb, true, terminal);
			FUNC0(ret < 0);
			FUNC1("drain #%u", call->rx_data_post);
			call->rx_data_post++;

			/* find out what the next packet is */
			skb = FUNC8(&call->rx_oos_queue);
			if (skb)
				call->rx_first_oos =
					FUNC4(FUNC6(skb)->hdr.seq);
			else
				call->rx_first_oos = 0;
			FUNC1("peek %p {%u}", skb, call->rx_first_oos);
		}
	}

	ret = 0;
socket_unavailable:
	FUNC11(&call->lock);
	FUNC3(" = %d", ret);
	return ret;
}