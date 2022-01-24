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
struct rxrpc_transport {int dummy; } ;
struct rxrpc_sock {int /*<<< orphan*/  sk; } ;
struct rxrpc_conn_bundle {int dummy; } ;
struct TYPE_8__ {scalar_t__ expires; } ;
struct rxrpc_call {int rx_data_post; TYPE_4__ lifetimer; TYPE_3__* conn; int /*<<< orphan*/  error_link; struct rxrpc_sock* socket; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_7__ {TYPE_2__* trans; } ;
struct TYPE_6__ {TYPE_1__* peer; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  error_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct rxrpc_call* FUNC1 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rxrpc_call* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_call_jar ; 
 int rxrpc_call_max_lifetime ; 
 int FUNC8 (struct rxrpc_sock*,struct rxrpc_transport*,struct rxrpc_conn_bundle*,struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rxrpc_call *FUNC12(
	struct rxrpc_sock *rx,
	struct rxrpc_transport *trans,
	struct rxrpc_conn_bundle *bundle,
	gfp_t gfp)
{
	struct rxrpc_call *call;
	int ret;

	FUNC2("");

	FUNC0(rx != NULL);
	FUNC0(trans != NULL);
	FUNC0(bundle != NULL);

	call = FUNC7(gfp);
	if (!call)
		return FUNC1(-ENOMEM);

	FUNC9(&rx->sk);
	call->socket = rx;
	call->rx_data_post = 1;

	ret = FUNC8(rx, trans, bundle, call, gfp);
	if (ret < 0) {
		FUNC5(rxrpc_call_jar, call);
		return FUNC1(ret);
	}

	FUNC10(&call->conn->trans->peer->lock);
	FUNC6(&call->error_link, &call->conn->trans->peer->error_targets);
	FUNC11(&call->conn->trans->peer->lock);

	call->lifetimer.expires = jiffies + rxrpc_call_max_lifetime * HZ;
	FUNC4(&call->lifetimer);

	FUNC3(" = %p", call);
	return call;
}