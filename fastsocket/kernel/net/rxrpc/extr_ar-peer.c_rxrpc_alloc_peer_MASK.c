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
struct udphdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ family; } ;
struct sockaddr_rxrpc {int transport_type; TYPE_1__ transport; } ;
struct rxrpc_peer {int hdrsize; scalar_t__ mtu; scalar_t__ maxdata; scalar_t__ if_mtu; int /*<<< orphan*/  srx; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  usage; int /*<<< orphan*/  lock; int /*<<< orphan*/  error_targets; int /*<<< orphan*/  link; int /*<<< orphan*/  destroyer; } ;
struct rxrpc_header {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  SOCK_DGRAM 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct rxrpc_peer* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sockaddr_rxrpc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_peer*) ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  rxrpc_destroy_peer ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rxrpc_peer *FUNC11(struct sockaddr_rxrpc *srx,
					   gfp_t gfp)
{
	struct rxrpc_peer *peer;

	FUNC3("");

	peer = FUNC7(sizeof(struct rxrpc_peer), gfp);
	if (peer) {
		FUNC2(&peer->destroyer, &rxrpc_destroy_peer);
		FUNC1(&peer->link);
		FUNC1(&peer->error_targets);
		FUNC10(&peer->lock);
		FUNC6(&peer->usage, 1);
		peer->debug_id = FUNC5(&rxrpc_debug_id);
		FUNC8(&peer->srx, srx, sizeof(*srx));

		FUNC9(peer);
		peer->mtu = peer->if_mtu;

		if (srx->transport.family == AF_INET) {
			peer->hdrsize = sizeof(struct iphdr);
			switch (srx->transport_type) {
			case SOCK_DGRAM:
				peer->hdrsize += sizeof(struct udphdr);
				break;
			default:
				FUNC0();
				break;
			}
		} else {
			FUNC0();
		}

		peer->hdrsize += sizeof(struct rxrpc_header);
		peer->maxdata = peer->mtu - peer->hdrsize;
	}

	FUNC4(" = %p", peer);
	return peer;
}