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
struct sockaddr_rxrpc {int /*<<< orphan*/  srx_service; } ;
struct rxrpc_transport {int dummy; } ;
struct rxrpc_sock {struct key* key; int /*<<< orphan*/  service_id; } ;
struct rxrpc_conn_bundle {scalar_t__ state; int /*<<< orphan*/  conn; int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  debug_id; } ;
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  conn; int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  debug_id; } ;
struct msghdr {scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct key {TYPE_1__ payload; } ;
typedef  enum rxrpc_command { ____Placeholder_rxrpc_command } rxrpc_command ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EPROTO ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct rxrpc_conn_bundle*) ; 
 int FUNC2 (struct rxrpc_conn_bundle*) ; 
 scalar_t__ RXRPC_CALL_CLIENT_SEND_REQUEST ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int RXRPC_CMD_SEND_ABORT ; 
 int RXRPC_CMD_SEND_DATA ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rxrpc_conn_bundle* FUNC7 (struct rxrpc_sock*,struct rxrpc_transport*,struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rxrpc_conn_bundle* FUNC8 (struct rxrpc_sock*,struct rxrpc_transport*,struct rxrpc_conn_bundle*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_transport*,struct rxrpc_conn_bundle*) ; 
 int /*<<< orphan*/  FUNC10 (struct rxrpc_conn_bundle*) ; 
 int /*<<< orphan*/  FUNC11 (struct rxrpc_conn_bundle*,scalar_t__) ; 
 int FUNC12 (struct kiocb*,struct rxrpc_sock*,struct rxrpc_conn_bundle*,struct msghdr*,size_t) ; 
 int FUNC13 (struct rxrpc_sock*,struct msghdr*,unsigned long*,int*,scalar_t__*,int) ; 

int FUNC14(struct kiocb *iocb, struct rxrpc_sock *rx,
			 struct rxrpc_transport *trans, struct msghdr *msg,
			 size_t len)
{
	struct rxrpc_conn_bundle *bundle;
	enum rxrpc_command cmd;
	struct rxrpc_call *call;
	unsigned long user_call_ID = 0;
	struct key *key;
	__be16 service_id;
	u32 abort_code = 0;
	int ret;

	FUNC4("");

	FUNC0(trans != NULL);

	ret = FUNC13(rx, msg, &user_call_ID, &cmd, &abort_code,
				 false);
	if (ret < 0)
		return ret;

	bundle = NULL;
	if (trans) {
		service_id = rx->service_id;
		if (msg->msg_name) {
			struct sockaddr_rxrpc *srx =
				(struct sockaddr_rxrpc *) msg->msg_name;
			service_id = FUNC6(srx->srx_service);
		}
		key = rx->key;
		if (key && !rx->key->payload.data)
			key = NULL;
		bundle = FUNC7(rx, trans, key, service_id,
					  GFP_KERNEL);
		if (FUNC1(bundle))
			return FUNC2(bundle);
	}

	call = FUNC8(rx, trans, bundle, user_call_ID,
				     abort_code == 0, GFP_KERNEL);
	if (trans)
		FUNC9(trans, bundle);
	if (FUNC1(call)) {
		FUNC5(" = %ld", FUNC2(call));
		return FUNC2(call);
	}

	FUNC3("CALL %d USR %lx ST %d on CONN %p",
	       call->debug_id, call->user_call_ID, call->state, call->conn);

	if (call->state >= RXRPC_CALL_COMPLETE) {
		/* it's too late for this call */
		ret = -ESHUTDOWN;
	} else if (cmd == RXRPC_CMD_SEND_ABORT) {
		FUNC11(call, abort_code);
	} else if (cmd != RXRPC_CMD_SEND_DATA) {
		ret = -EINVAL;
	} else if (call->state != RXRPC_CALL_CLIENT_SEND_REQUEST) {
		/* request phase complete for this client call */
		ret = -EPROTO;
	} else {
		ret = FUNC12(iocb, rx, call, msg, len);
	}

	FUNC10(call);
	FUNC5(" = %d", ret);
	return ret;
}