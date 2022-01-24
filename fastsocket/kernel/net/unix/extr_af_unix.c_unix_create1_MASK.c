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
struct unix_sock {int /*<<< orphan*/  peer_wait; int /*<<< orphan*/  readlock; int /*<<< orphan*/  link; int /*<<< orphan*/  inflight; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mnt; int /*<<< orphan*/ * dentry; } ;
struct socket {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct sock {int /*<<< orphan*/  sk_prot; int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_max_ack_backlog; int /*<<< orphan*/  sk_write_space; TYPE_1__ sk_receive_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  sysctl_max_dgram_qlen; } ;
struct net {TYPE_2__ unx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  af_unix_sk_receive_queue_lock_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC11 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  unix_nr_socks ; 
 int /*<<< orphan*/  unix_proto ; 
 struct unix_sock* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  unix_sock_destructor ; 
 int /*<<< orphan*/  unix_sockets_unbound ; 
 int /*<<< orphan*/  unix_write_space ; 

__attribute__((used)) static struct sock *FUNC18(struct net *net, struct socket *sock)
{
	struct sock *sk = NULL;
	struct unix_sock *u;

	FUNC2(&unix_nr_socks);
	if (FUNC3(&unix_nr_socks) > 2 * FUNC5())
		goto out;

	sk = FUNC11(net, PF_UNIX, GFP_KERNEL, &unix_proto);
	if (!sk)
		goto out;

	FUNC12(sock, sk);
	FUNC9(&sk->sk_receive_queue.lock,
				&af_unix_sk_receive_queue_lock_key);

	sk->sk_write_space	= unix_write_space;
	sk->sk_max_ack_backlog	= net->unx.sysctl_max_dgram_qlen;
	sk->sk_destruct		= unix_sock_destructor;
	u	  = FUNC17(sk);
	u->dentry = NULL;
	u->mnt	  = NULL;
	FUNC15(&u->lock);
	FUNC4(&u->inflight, 0);
	FUNC0(&u->link);
	FUNC10(&u->readlock); /* single task reading lock */
	FUNC6(&u->peer_wait);
	FUNC16(unix_sockets_unbound, sk);
out:
	if (sk == NULL)
		FUNC1(&unix_nr_socks);
	else {
		FUNC7();
		FUNC14(FUNC13(sk), sk->sk_prot, 1);
		FUNC8();
	}
	return sk;
}