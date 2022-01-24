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
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; } ;
struct sock {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_family; } ;
struct netns_pfkey {int /*<<< orphan*/  socks_nr; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOMEM ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_KEY ; 
 int PF_KEY_V2 ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_proto ; 
 struct netns_pfkey* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  pfkey_net_id ; 
 int /*<<< orphan*/  pfkey_ops ; 
 int /*<<< orphan*/  pfkey_sock_destruct ; 
 struct sock* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct sock*) ; 

__attribute__((used)) static int FUNC6(struct net *net, struct socket *sock, int protocol,
			int kern)
{
	struct netns_pfkey *net_pfkey = FUNC2(net, pfkey_net_id);
	struct sock *sk;
	int err;

	if (!FUNC1(CAP_NET_ADMIN))
		return -EPERM;
	if (sock->type != SOCK_RAW)
		return -ESOCKTNOSUPPORT;
	if (protocol != PF_KEY_V2)
		return -EPROTONOSUPPORT;

	err = -ENOMEM;
	sk = FUNC4(net, PF_KEY, GFP_KERNEL, &key_proto);
	if (sk == NULL)
		goto out;

	sock->ops = &pfkey_ops;
	FUNC5(sock, sk);

	sk->sk_family = PF_KEY;
	sk->sk_destruct = pfkey_sock_destruct;

	FUNC0(&net_pfkey->socks_nr);

	FUNC3(sk);

	return 0;
out:
	return err;
}