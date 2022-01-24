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
struct tpacket_req {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_prot; } ;
struct TYPE_6__ {scalar_t__ pg_vec; } ;
struct TYPE_5__ {scalar_t__ pg_vec; } ;
struct packet_sock {TYPE_3__ tx_ring; TYPE_2__ rx_ring; scalar_t__ num; scalar_t__ running; int /*<<< orphan*/  prot_hook; } ;
struct TYPE_4__ {int /*<<< orphan*/  sklist_lock; } ;
struct net {TYPE_1__ packet; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tpacket_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct tpacket_req*,int,int) ; 
 struct packet_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct net* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct packet_sock *po;
	struct net *net;
#ifdef CONFIG_PACKET_MMAP
	struct tpacket_req req;
#endif

	if (!sk)
		return 0;

	net = FUNC9(sk);
	po = FUNC5(sk);

	FUNC13(&net->packet.sklist_lock);
	FUNC6(sk);
	FUNC11(net, sk->sk_prot, -1);
	FUNC14(&net->packet.sklist_lock);

	/*
	 *	Unhook packet receive handler.
	 */

	if (po->running) {
		/*
		 *	Remove the protocol hook
		 */
		FUNC1(&po->prot_hook);
		po->running = 0;
		po->num = 0;
		FUNC0(sk);
	}

	FUNC3(sk);

#ifdef CONFIG_PACKET_MMAP
	memset(&req, 0, sizeof(req));

	if (po->rx_ring.pg_vec)
		packet_set_ring(sk, &req, 1, 0);

	if (po->tx_ring.pg_vec)
		packet_set_ring(sk, &req, 1, 1);
#endif

	/*
	 *	Now the socket is dead. No more input will appear.
	 */

	FUNC10(sk);
	sock->sk = NULL;

	/* Purge queues */

	FUNC8(&sk->sk_receive_queue);
	FUNC7(sk);

	FUNC12(sk);
	return 0;
}