#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct sock {struct rxrpc_local* sk_user_data; } ;
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct rxrpc_transport {int dummy; } ;
struct TYPE_6__ {int flags; scalar_t__ epoch; scalar_t__ cid; scalar_t__ callNumber; scalar_t__ type; scalar_t__ seq; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {int /*<<< orphan*/  acceptor; int /*<<< orphan*/  accept_queue; int /*<<< orphan*/  usage; } ;
struct rxrpc_connection {int /*<<< orphan*/  debug_id; } ;
struct TYPE_7__ {scalar_t__ saddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EAGAIN ; 
 scalar_t__ FUNC2 (struct rxrpc_peer*) ; 
 int RXRPC_CLIENT_INITIATED ; 
 scalar_t__ RXRPC_N_PACKET_TYPES ; 
 scalar_t__ RXRPC_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  RX_CALL_DEAD ; 
 int /*<<< orphan*/  RX_INVALID_OPERATION ; 
 int /*<<< orphan*/  RX_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDP_MIB_INDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  init_net ; 
 TYPE_4__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct rxrpc_skb_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct rxrpc_connection* FUNC19 (struct rxrpc_transport*,TYPE_2__*) ; 
 struct rxrpc_peer* FUNC20 (struct rxrpc_local*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rxrpc_transport* FUNC21 (struct rxrpc_local*,struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  rxrpc_local_lock ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct rxrpc_connection*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct rxrpc_connection*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC28 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC29 (struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC30 (struct rxrpc_transport*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct rxrpc_local*,struct sk_buff*) ; 
 struct rxrpc_skb_priv* FUNC33 (struct sk_buff*) ; 
 scalar_t__ FUNC34 (struct sk_buff*) ; 
 scalar_t__ FUNC35 (struct sk_buff*,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC38 (struct sock*,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_1__* FUNC39 (struct sk_buff*) ; 

void FUNC40(struct sock *sk, int count)
{
	struct rxrpc_connection *conn;
	struct rxrpc_transport *trans;
	struct rxrpc_skb_priv *sp;
	struct rxrpc_local *local;
	struct rxrpc_peer *peer;
	struct sk_buff *skb;
	int ret;

	FUNC5("%p, %d", sk, count);

	FUNC0(!FUNC12());

	FUNC17(&rxrpc_local_lock);
	local = sk->sk_user_data;
	if (local && FUNC9(&local->usage) > 0)
		FUNC23(local);
	else
		local = NULL;
	FUNC18(&rxrpc_local_lock);
	if (!local) {
		FUNC6(" [local dead]");
		return;
	}

	skb = FUNC38(sk, 0, 1, &ret);
	if (!skb) {
		FUNC28(local);
		if (ret == -EAGAIN)
			return;
		FUNC4("UDP socket error %d", ret);
		return;
	}

	FUNC24(skb);

	FUNC7("recv skb %p", skb);

	/* we'll probably need to checksum it (didn't call sock_recvmsg) */
	if (FUNC34(skb)) {
		FUNC22(skb);
		FUNC28(local);
		FUNC3(&init_net, UDP_MIB_INERRORS, 0);
		FUNC6(" [CSUM failed]");
		return;
	}

	FUNC3(&init_net, UDP_MIB_INDATAGRAMS, 0);

	/* the socket buffer we have is owned by UDP, with UDP's data all over
	 * it, but we really want our own */
	FUNC36(skb);
	sp = FUNC33(skb);
	FUNC13(sp, 0, sizeof(*sp));

	FUNC7("Rx UDP packet from %08x:%04hu",
	     FUNC14(FUNC11(skb)->saddr), FUNC15(FUNC39(skb)->source));

	/* dig out the RxRPC connection details */
	if (FUNC35(skb, sizeof(struct udphdr), &sp->hdr,
			  sizeof(sp->hdr)) < 0)
		goto bad_message;
	if (!FUNC16(skb, sizeof(struct udphdr) + sizeof(sp->hdr)))
		FUNC1();

	FUNC7("Rx RxRPC %s ep=%x call=%x:%x",
	     sp->hdr.flags & RXRPC_CLIENT_INITIATED ? "ToServer" : "ToClient",
	     FUNC14(sp->hdr.epoch),
	     FUNC14(sp->hdr.cid),
	     FUNC14(sp->hdr.callNumber));

	if (sp->hdr.type == 0 || sp->hdr.type >= RXRPC_N_PACKET_TYPES) {
		FUNC8("Rx Bad Packet Type %u", sp->hdr.type);
		goto bad_message;
	}

	if (sp->hdr.type == RXRPC_PACKET_TYPE_DATA &&
	    (sp->hdr.callNumber == 0 || sp->hdr.seq == 0))
		goto bad_message;

	peer = FUNC20(local, FUNC11(skb)->saddr, FUNC39(skb)->source);
	if (FUNC2(peer))
		goto cant_route_call;

	trans = FUNC21(local, peer);
	FUNC29(peer);
	if (!trans)
		goto cant_route_call;

	conn = FUNC19(trans, &sp->hdr);
	FUNC30(trans);
	if (!conn)
		goto cant_route_call;

	FUNC4("CONN %p {%d}", conn, conn->debug_id);

	if (sp->hdr.callNumber == 0)
		FUNC26(conn, skb);
	else
		FUNC25(conn, skb);
	FUNC27(conn);
	FUNC28(local);
	return;

cant_route_call:
	FUNC4("can't route call");
	if (sp->hdr.flags & RXRPC_CLIENT_INITIATED &&
	    sp->hdr.type == RXRPC_PACKET_TYPE_DATA) {
		if (sp->hdr.seq == FUNC10(1)) {
			FUNC4("first packet");
			FUNC37(&local->accept_queue, skb);
			FUNC31(&local->acceptor);
			FUNC28(local);
			FUNC6(" [incoming]");
			return;
		}
		skb->priority = RX_INVALID_OPERATION;
	} else {
		skb->priority = RX_CALL_DEAD;
	}

	FUNC4("reject");
	FUNC32(local, skb);
	FUNC28(local);
	FUNC6(" [no call]");
	return;

bad_message:
	skb->priority = RX_PROTOCOL_ERROR;
	FUNC32(local, skb);
	FUNC28(local);
	FUNC6(" [badmsg]");
}