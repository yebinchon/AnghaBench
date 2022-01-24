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
struct TYPE_4__ {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct TYPE_5__ {TYPE_1__ sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_2__ transport; int /*<<< orphan*/  transport_type; int /*<<< orphan*/  srx_service; int /*<<< orphan*/  srx_family; } ;
struct rxrpc_call {int dummy; } ;
struct msghdr {int msg_iovlen; int /*<<< orphan*/  msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct iovec {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct afs_wait_mode {int (* wait ) (struct afs_call*) ;} ;
struct afs_call {TYPE_3__* type; struct rxrpc_call* rxcall; scalar_t__ send_pages; int /*<<< orphan*/  request_size; int /*<<< orphan*/  state; int /*<<< orphan*/  request; int /*<<< orphan*/ * key; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; int /*<<< orphan*/  async_work; struct afs_wait_mode const* wait_mode; } ;
typedef  int /*<<< orphan*/  srx ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* destructor ) (struct afs_call*) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_AWAIT_REPLY ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_RXRPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  MSG_MORE ; 
 int FUNC3 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  RX_USER_ABORT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC4 (char*,struct afs_call*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*) ; 
 int /*<<< orphan*/  afs_outstanding_calls ; 
 int /*<<< orphan*/  afs_process_async_call ; 
 int FUNC8 (struct afs_call*,struct msghdr*,struct kvec*) ; 
 int /*<<< orphan*/  afs_socket ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_rxrpc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 struct rxrpc_call* FUNC15 (int /*<<< orphan*/ ,struct sockaddr_rxrpc*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rxrpc_call*) ; 
 int FUNC17 (struct rxrpc_call*,struct msghdr*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC19 (struct afs_call*) ; 

int FUNC20(struct in_addr *addr, struct afs_call *call, gfp_t gfp,
		  const struct afs_wait_mode *wait_mode)
{
	struct sockaddr_rxrpc srx;
	struct rxrpc_call *rxcall;
	struct msghdr msg;
	struct kvec iov[1];
	int ret;

	FUNC5("%x,{%d},", addr->s_addr, FUNC13(call->port));

	FUNC0(call->type != NULL);
	FUNC0(call->type->name != NULL);

	FUNC4("____MAKE %p{%s,%x} [%d]____",
	       call, call->type->name, FUNC10(call->key),
	       FUNC9(&afs_outstanding_calls));

	call->wait_mode = wait_mode;
	FUNC1(&call->async_work, afs_process_async_call);

	FUNC12(&srx, 0, sizeof(srx));
	srx.srx_family = AF_RXRPC;
	srx.srx_service = call->service_id;
	srx.transport_type = SOCK_DGRAM;
	srx.transport_len = sizeof(srx.transport.sin);
	srx.transport.sin.sin_family = AF_INET;
	srx.transport.sin.sin_port = call->port;
	FUNC11(&srx.transport.sin.sin_addr, addr, 4);

	/* create a call */
	rxcall = FUNC15(afs_socket, &srx, call->key,
					 (unsigned long) call, gfp);
	call->key = NULL;
	if (FUNC2(rxcall)) {
		ret = FUNC3(rxcall);
		goto error_kill_call;
	}

	call->rxcall = rxcall;

	/* send the request */
	iov[0].iov_base	= call->request;
	iov[0].iov_len	= call->request_size;

	msg.msg_name		= NULL;
	msg.msg_namelen		= 0;
	msg.msg_iov		= (struct iovec *) iov;
	msg.msg_iovlen		= 1;
	msg.msg_control		= NULL;
	msg.msg_controllen	= 0;
	msg.msg_flags		= (call->send_pages ? MSG_MORE : 0);

	/* have to change the state *before* sending the last packet as RxRPC
	 * might give us the reply before it returns from sending the
	 * request */
	if (!call->send_pages)
		call->state = AFS_CALL_AWAIT_REPLY;
	ret = FUNC17(rxcall, &msg, call->request_size);
	if (ret < 0)
		goto error_do_abort;

	if (call->send_pages) {
		ret = FUNC8(call, &msg, iov);
		if (ret < 0)
			goto error_do_abort;
	}

	/* at this point, an async call may no longer exist as it may have
	 * already completed */
	return wait_mode->wait(call);

error_do_abort:
	FUNC14(rxcall, RX_USER_ABORT);
	FUNC16(rxcall);
	call->rxcall = NULL;
error_kill_call:
	call->type->destructor(call);
	FUNC7(call);
	FUNC6(" = %d", ret);
	return ret;
}