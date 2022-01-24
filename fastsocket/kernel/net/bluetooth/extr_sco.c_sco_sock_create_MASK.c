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
struct sock {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct socket*) ; 
 int ENOMEM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 struct sock* FUNC1 (struct net*,struct socket*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sco_sock_ops ; 

__attribute__((used)) static int FUNC3(struct net *net, struct socket *sock, int protocol,
			   int kern)
{
	struct sock *sk;

	FUNC0("sock %p", sock);

	sock->state = SS_UNCONNECTED;

	if (sock->type != SOCK_SEQPACKET)
		return -ESOCKTNOSUPPORT;

	sock->ops = &sco_sock_ops;

	sk = FUNC1(net, sock, protocol, GFP_ATOMIC);
	if (!sk)
		return -ENOMEM;

	FUNC2(sk, NULL);
	return 0;
}