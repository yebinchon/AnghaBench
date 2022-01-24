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
struct socket {int /*<<< orphan*/  sk; } ;
struct sockaddr_rxrpc {int /*<<< orphan*/  srx_service; } ;
struct sockaddr {int dummy; } ;
struct rxrpc_transport {int /*<<< orphan*/  usage; } ;
struct rxrpc_sock {int /*<<< orphan*/  sk; struct key* key; int /*<<< orphan*/  service_id; struct rxrpc_transport* trans; } ;
struct rxrpc_conn_bundle {int /*<<< orphan*/  usage; } ;
struct rxrpc_call {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct key {TYPE_1__ payload; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 struct rxrpc_call* FUNC0 (struct rxrpc_transport*) ; 
 struct rxrpc_call* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rxrpc_transport*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rxrpc_transport* FUNC10 (struct rxrpc_sock*,struct rxrpc_transport*,struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rxrpc_call* FUNC11 (struct rxrpc_sock*,struct rxrpc_transport*,struct rxrpc_transport*,unsigned long,int,int /*<<< orphan*/ ) ; 
 struct rxrpc_transport* FUNC12 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rxrpc_transport*,struct rxrpc_transport*) ; 
 int /*<<< orphan*/  FUNC14 (struct rxrpc_transport*) ; 
 struct rxrpc_sock* FUNC15 (int /*<<< orphan*/ ) ; 

struct rxrpc_call *FUNC16(struct socket *sock,
					   struct sockaddr_rxrpc *srx,
					   struct key *key,
					   unsigned long user_call_ID,
					   gfp_t gfp)
{
	struct rxrpc_conn_bundle *bundle;
	struct rxrpc_transport *trans;
	struct rxrpc_call *call;
	struct rxrpc_sock *rx = FUNC15(sock->sk);
	__be16 service_id;

	FUNC3(",,%x,%lx", FUNC7(key), user_call_ID);

	FUNC8(&rx->sk);

	if (srx) {
		trans = FUNC12(sock, (struct sockaddr *) srx,
						sizeof(*srx), 0, gfp);
		if (FUNC2(trans)) {
			call = FUNC0(trans);
			trans = NULL;
			goto out_notrans;
		}
	} else {
		trans = rx->trans;
		if (!trans) {
			call = FUNC1(-ENOTCONN);
			goto out_notrans;
		}
		FUNC5(&trans->usage);
	}

	service_id = rx->service_id;
	if (srx)
		service_id = FUNC6(srx->srx_service);

	if (!key)
		key = rx->key;
	if (key && !key->payload.data)
		key = NULL; /* a no-security key */

	bundle = FUNC10(rx, trans, key, service_id, gfp);
	if (FUNC2(bundle)) {
		call = FUNC0(bundle);
		goto out;
	}

	call = FUNC11(rx, trans, bundle, user_call_ID, true,
				     gfp);
	FUNC13(trans, bundle);
out:
	FUNC14(trans);
out_notrans:
	FUNC9(&rx->sk);
	FUNC4(" = %p", call);
	return call;
}