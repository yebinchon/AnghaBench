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
struct socket {scalar_t__ type; int /*<<< orphan*/  ops; int /*<<< orphan*/  state; } ;
struct sock {int sk_protocol; TYPE_1__* sk_prot; int /*<<< orphan*/  sk_backlog_rcv; } ;
struct pn_sock {scalar_t__ resource; scalar_t__ sobject; } ;
struct phonet_protocol {scalar_t__ sock_type; int /*<<< orphan*/  ops; int /*<<< orphan*/  prot; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct sock*) ;int /*<<< orphan*/  backlog_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_PHONET ; 
 int PN_PROTO_PHONET ; 
 int PN_PROTO_PIPE ; 
#define  SOCK_DGRAM 129 
#define  SOCK_SEQPACKET 128 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct phonet_protocol* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct phonet_protocol*) ; 
 struct pn_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct socket *sock, int protocol,
			    int kern)
{
	struct sock *sk;
	struct pn_sock *pn;
	struct phonet_protocol *pnp;
	int err;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (protocol == 0) {
		/* Default protocol selection */
		switch (sock->type) {
		case SOCK_DGRAM:
			protocol = PN_PROTO_PHONET;
			break;
		case SOCK_SEQPACKET:
			protocol = PN_PROTO_PIPE;
			break;
		default:
			return -EPROTONOSUPPORT;
		}
	}

	pnp = FUNC1(protocol);
	if (pnp == NULL &&
	    FUNC4("net-pf-%d-proto-%d", PF_PHONET, protocol) == 0)
		pnp = FUNC1(protocol);

	if (pnp == NULL)
		return -EPROTONOSUPPORT;
	if (sock->type != pnp->sock_type) {
		err = -EPROTONOSUPPORT;
		goto out;
	}

	sk = FUNC5(net, PF_PHONET, GFP_KERNEL, pnp->prot);
	if (sk == NULL) {
		err = -ENOMEM;
		goto out;
	}

	FUNC6(sock, sk);
	sock->state = SS_UNCONNECTED;
	sock->ops = pnp->ops;
	sk->sk_backlog_rcv = sk->sk_prot->backlog_rcv;
	sk->sk_protocol = protocol;
	pn = FUNC3(sk);
	pn->sobject = 0;
	pn->resource = 0;
	sk->sk_prot->init(sk);
	err = 0;

out:
	FUNC2(pnp);
	return err;
}