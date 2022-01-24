#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tmp ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_connection {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  state_lock; int /*<<< orphan*/ * channels; TYPE_1__* security; int /*<<< orphan*/  debug_id; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int (* respond_to_challenge ) (struct rxrpc_connection*,struct sk_buff*,int /*<<< orphan*/ *) ;int (* verify_response ) (struct rxrpc_connection*,struct sk_buff*,int /*<<< orphan*/ *) ;int (* init_connection_security ) (struct rxrpc_connection*) ;int /*<<< orphan*/  (* prime_packet_security ) (struct rxrpc_connection*) ;} ;

/* Variables and functions */
 int ECONNABORTED ; 
 int EPROTO ; 
 int /*<<< orphan*/  RXRPC_CALL_REMOTELY_ABORTED ; 
 scalar_t__ RXRPC_CONN_REMOTELY_ABORTED ; 
 scalar_t__ RXRPC_CONN_SERVER ; 
 scalar_t__ RXRPC_CONN_SERVER_CHALLENGING ; 
 int RXRPC_MAXCALLS ; 
#define  RXRPC_PACKET_TYPE_ABORT 130 
#define  RXRPC_PACKET_TYPE_CHALLENGE 129 
#define  RXRPC_PACKET_TYPE_RESPONSE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct rxrpc_connection*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct rxrpc_connection*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC16 (struct rxrpc_connection*) ; 

__attribute__((used)) static int FUNC17(struct rxrpc_connection *conn,
			       struct sk_buff *skb,
			       u32 *_abort_code)
{
	struct rxrpc_skb_priv *sp = FUNC9(skb);
	__be32 tmp;
	u32 serial;
	int loop, ret;

	if (conn->state >= RXRPC_CONN_REMOTELY_ABORTED) {
		FUNC3(" = -ECONNABORTED [%u]", conn->state);
		return -ECONNABORTED;
	}

	serial = FUNC4(sp->hdr.serial);

	FUNC0("{%d},{%u,%%%u},", conn->debug_id, sp->hdr.type, serial);

	switch (sp->hdr.type) {
	case RXRPC_PACKET_TYPE_ABORT:
		if (FUNC10(skb, 0, &tmp, sizeof(tmp)) < 0)
			return -EPROTO;
		FUNC2("Rx ABORT %%%u { ac=%d }", serial, FUNC4(tmp));

		conn->state = RXRPC_CONN_REMOTELY_ABORTED;
		FUNC7(conn, RXRPC_CALL_REMOTELY_ABORTED,
				  FUNC4(tmp));
		return -ECONNABORTED;

	case RXRPC_PACKET_TYPE_CHALLENGE:
		if (conn->security)
			return conn->security->respond_to_challenge(
				conn, skb, _abort_code);
		return -EPROTO;

	case RXRPC_PACKET_TYPE_RESPONSE:
		if (!conn->security)
			return -EPROTO;

		ret = conn->security->verify_response(conn, skb, _abort_code);
		if (ret < 0)
			return ret;

		ret = conn->security->init_connection_security(conn);
		if (ret < 0)
			return ret;

		conn->security->prime_packet_security(conn);
		FUNC5(&conn->lock);
		FUNC11(&conn->state_lock);

		if (conn->state == RXRPC_CONN_SERVER_CHALLENGING) {
			conn->state = RXRPC_CONN_SERVER;
			for (loop = 0; loop < RXRPC_MAXCALLS; loop++)
				FUNC8(conn->channels[loop]);
		}

		FUNC12(&conn->state_lock);
		FUNC6(&conn->lock);
		return 0;

	default:
		FUNC1(" = -EPROTO [%u]", sp->hdr.type);
		return -EPROTO;
	}
}