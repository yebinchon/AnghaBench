#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_call {scalar_t__ state; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
typedef  enum rxrpc_command { ____Placeholder_rxrpc_command } rxrpc_command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBADSLT ; 
 int EPROTO ; 
 int ESHUTDOWN ; 
 scalar_t__ FUNC1 (struct rxrpc_call*) ; 
 int FUNC2 (struct rxrpc_call*) ; 
 scalar_t__ RXRPC_CALL_CLIENT_SEND_REQUEST ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 scalar_t__ RXRPC_CALL_SERVER_ACK_REQUEST ; 
 scalar_t__ RXRPC_CALL_SERVER_SEND_REPLY ; 
 int RXRPC_CMD_ACCEPT ; 
#define  RXRPC_CMD_SEND_ABORT 129 
#define  RXRPC_CMD_SEND_DATA 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct rxrpc_call* FUNC5 (struct rxrpc_sock*,unsigned long) ; 
 struct rxrpc_call* FUNC6 (struct rxrpc_sock*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct kiocb*,struct rxrpc_sock*,struct rxrpc_call*,struct msghdr*,size_t) ; 
 int FUNC10 (struct rxrpc_sock*,struct msghdr*,unsigned long*,int*,int /*<<< orphan*/ *,int) ; 

int FUNC11(struct kiocb *iocb, struct rxrpc_sock *rx,
			 struct msghdr *msg, size_t len)
{
	enum rxrpc_command cmd;
	struct rxrpc_call *call;
	unsigned long user_call_ID = 0;
	u32 abort_code = 0;
	int ret;

	FUNC3("");

	ret = FUNC10(rx, msg, &user_call_ID, &cmd, &abort_code,
				 true);
	if (ret < 0)
		return ret;

	if (cmd == RXRPC_CMD_ACCEPT) {
		call = FUNC5(rx, user_call_ID);
		if (FUNC1(call))
			return FUNC2(call);
		FUNC7(call);
		return 0;
	}

	call = FUNC6(rx, user_call_ID);
	if (!call)
		return -EBADSLT;
	if (call->state >= RXRPC_CALL_COMPLETE) {
		ret = -ESHUTDOWN;
		goto out;
	}

	switch (cmd) {
	case RXRPC_CMD_SEND_DATA:
		if (call->state != RXRPC_CALL_CLIENT_SEND_REQUEST &&
		    call->state != RXRPC_CALL_SERVER_ACK_REQUEST &&
		    call->state != RXRPC_CALL_SERVER_SEND_REPLY) {
			/* Tx phase not yet begun for this call */
			ret = -EPROTO;
			break;
		}

		ret = FUNC9(iocb, rx, call, msg, len);
		break;

	case RXRPC_CMD_SEND_ABORT:
		FUNC8(call, abort_code);
		break;
	default:
		FUNC0();
	}

	out:
	FUNC7(call);
	FUNC4(" = %d", ret);
	return ret;
}