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
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; int /*<<< orphan*/  state; } ;
struct sock {int sk_reuse; int /*<<< orphan*/  sk_family; } ;
struct net {int dummy; } ;
struct econet_sock {int num; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int ENOBUFS ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_ECONET ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 struct econet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  econet_ops ; 
 int /*<<< orphan*/  econet_proto ; 
 int /*<<< orphan*/  econet_sklist ; 
 struct net init_net ; 
 struct sock* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct socket *sock, int protocol,
			 int kern)
{
	struct sock *sk;
	struct econet_sock *eo;
	int err;

	if (net != &init_net)
		return -EAFNOSUPPORT;

	/* Econet only provides datagram services. */
	if (sock->type != SOCK_DGRAM)
		return -ESOCKTNOSUPPORT;

	sock->state = SS_UNCONNECTED;

	err = -ENOBUFS;
	sk = FUNC2(net, PF_ECONET, GFP_KERNEL, &econet_proto);
	if (sk == NULL)
		goto out;

	sk->sk_reuse = 1;
	sock->ops = &econet_ops;
	FUNC3(sock, sk);

	eo = FUNC0(sk);
	FUNC4(sk, SOCK_ZAPPED);
	sk->sk_family = PF_ECONET;
	eo->num = protocol;

	FUNC1(&econet_sklist, sk);
	return(0);
out:
	return err;
}