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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data_len; } ;
struct TYPE_2__ {int flags; void* serial; int /*<<< orphan*/  _rsvd; void* seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_jumbo_header {int flags; int /*<<< orphan*/  _rsvd; } ;
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  events; int /*<<< orphan*/  abort_code; } ;
typedef  int /*<<< orphan*/  jhdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RXRPC_CALL_ABORT ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ; 
 int RXRPC_JUMBO_DATALEN ; 
 int RXRPC_JUMBO_PACKET ; 
 int /*<<< orphan*/  RX_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct rxrpc_call*) ; 
 struct rxrpc_skb_priv* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,struct rxrpc_jumbo_header*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct rxrpc_call *call,
				       struct sk_buff *jumbo)
{
	struct rxrpc_jumbo_header jhdr;
	struct rxrpc_skb_priv *sp;
	struct sk_buff *part;

	FUNC2(",{%u,%u}", jumbo->data_len, jumbo->len);

	sp = FUNC13(jumbo);

	do {
		sp->hdr.flags &= ~RXRPC_JUMBO_PACKET;

		/* make a clone to represent the first subpacket in what's left
		 * of the jumbo packet */
		part = FUNC15(jumbo, GFP_ATOMIC);
		if (!part) {
			/* simply ditch the tail in the event of ENOMEM */
			FUNC8(jumbo, RXRPC_JUMBO_DATALEN);
			break;
		}
		FUNC11(part);

		FUNC8(part, RXRPC_JUMBO_DATALEN);

		if (!FUNC7(jumbo, RXRPC_JUMBO_DATALEN))
			goto protocol_error;

		if (FUNC16(jumbo, 0, &jhdr, sizeof(jhdr)) < 0)
			goto protocol_error;
		if (!FUNC7(jumbo, sizeof(jhdr)))
			FUNC0();

		sp->hdr.seq	= FUNC5(FUNC6(sp->hdr.seq) + 1);
		sp->hdr.serial	= FUNC5(FUNC6(sp->hdr.serial) + 1);
		sp->hdr.flags	= jhdr.flags;
		sp->hdr._rsvd	= jhdr._rsvd;

		FUNC4("Rx DATA Jumbo %%%u", FUNC6(sp->hdr.serial) - 1);

		FUNC9(call, part);
		part = NULL;

	} while (sp->hdr.flags & RXRPC_JUMBO_PACKET);

	FUNC9(call, jumbo);
	FUNC3("");
	return;

protocol_error:
	FUNC1("protocol error");
	FUNC10(part);
	FUNC10(jumbo);
	FUNC17(&call->state_lock);
	if (call->state <= RXRPC_CALL_COMPLETE) {
		call->state = RXRPC_CALL_LOCALLY_ABORTED;
		call->abort_code = RX_PROTOCOL_ERROR;
		FUNC14(RXRPC_CALL_ABORT, &call->events);
		FUNC12(call);
	}
	FUNC18(&call->state_lock);
	FUNC3("");
}