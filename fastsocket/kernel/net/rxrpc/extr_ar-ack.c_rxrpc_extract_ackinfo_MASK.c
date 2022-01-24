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
struct sk_buff {int dummy; } ;
struct rxrpc_peer {unsigned int maxdata; scalar_t__ mtu; int /*<<< orphan*/  lock; scalar_t__ hdrsize; } ;
struct rxrpc_call {TYPE_2__* conn; } ;
struct rxrpc_ackinfo {int /*<<< orphan*/  maxMTU; int /*<<< orphan*/  rxMTU; int /*<<< orphan*/  jumbo_max; int /*<<< orphan*/  rwind; } ;
typedef  int /*<<< orphan*/  ackinfo ;
struct TYPE_4__ {TYPE_1__* trans; } ;
struct TYPE_3__ {struct rxrpc_peer* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,struct rxrpc_ackinfo*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct rxrpc_call *call, struct sk_buff *skb,
				  unsigned latest, int nAcks)
{
	struct rxrpc_ackinfo ackinfo;
	struct rxrpc_peer *peer;
	unsigned mtu;

	if (FUNC5(skb, nAcks + 3, &ackinfo, sizeof(ackinfo)) < 0) {
		FUNC0(" [no ackinfo]");
		return;
	}

	FUNC2("Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }",
	       latest,
	       FUNC4(ackinfo.rxMTU), FUNC4(ackinfo.maxMTU),
	       FUNC4(ackinfo.rwind), FUNC4(ackinfo.jumbo_max));

	mtu = FUNC3(FUNC4(ackinfo.rxMTU), FUNC4(ackinfo.maxMTU));

	peer = call->conn->trans->peer;
	if (mtu < peer->maxdata) {
		FUNC6(&peer->lock);
		peer->maxdata = mtu;
		peer->mtu = mtu + peer->hdrsize;
		FUNC7(&peer->lock);
		FUNC1("Net MTU %u (maxdata %u)", peer->mtu, peer->maxdata);
	}
}