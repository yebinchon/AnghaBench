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
struct rxrpc_transport {int /*<<< orphan*/  error_handler; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  usage; int /*<<< orphan*/  conn_lock; int /*<<< orphan*/  client_lock; int /*<<< orphan*/  error_queue; void* server_conns; void* client_conns; void* bundles; int /*<<< orphan*/  link; struct rxrpc_peer* peer; struct rxrpc_local* local; } ;
struct TYPE_3__ {scalar_t__ family; } ;
struct TYPE_4__ {int transport_type; TYPE_1__ transport; } ;
struct rxrpc_peer {TYPE_2__ srx; } ;
struct rxrpc_local {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* RB_ROOT ; 
#define  SOCK_DGRAM 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rxrpc_transport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct rxrpc_transport* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_UDP_error_handler ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rxrpc_transport *FUNC11(struct rxrpc_local *local,
						     struct rxrpc_peer *peer,
						     gfp_t gfp)
{
	struct rxrpc_transport *trans;

	FUNC3("");

	trans = FUNC7(sizeof(struct rxrpc_transport), gfp);
	if (trans) {
		trans->local = local;
		trans->peer = peer;
		FUNC1(&trans->link);
		trans->bundles = RB_ROOT;
		trans->client_conns = RB_ROOT;
		trans->server_conns = RB_ROOT;
		FUNC9(&trans->error_queue);
		FUNC10(&trans->client_lock);
		FUNC8(&trans->conn_lock);
		FUNC6(&trans->usage, 1);
		trans->debug_id = FUNC5(&rxrpc_debug_id);

		if (peer->srx.transport.family == AF_INET) {
			switch (peer->srx.transport_type) {
			case SOCK_DGRAM:
				FUNC2(&trans->error_handler,
					  rxrpc_UDP_error_handler);
				break;
			default:
				FUNC0();
				break;
			}
		} else {
			FUNC0();
		}
	}

	FUNC4(" = %p", trans);
	return trans;
}