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
struct socket {struct sock* sk; } ;
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dump; } ;
struct pfkey_sock {TYPE_1__ dump; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int MSG_PEEK ; 
 int MSG_TRUNC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pfkey_sock*) ; 
 struct pfkey_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct kiocb *kiocb,
			 struct socket *sock, struct msghdr *msg, size_t len,
			 int flags)
{
	struct sock *sk = sock->sk;
	struct pfkey_sock *pfk = FUNC2(sk);
	struct sk_buff *skb;
	int copied, err;

	err = -EINVAL;
	if (flags & ~(MSG_PEEK|MSG_DONTWAIT|MSG_TRUNC|MSG_CMSG_COMPAT))
		goto out;

	msg->msg_namelen = 0;
	skb = FUNC5(sk, flags, flags & MSG_DONTWAIT, &err);
	if (skb == NULL)
		goto out;

	copied = skb->len;
	if (copied > len) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	FUNC6(skb);
	err = FUNC3(skb, 0, msg->msg_iov, copied);
	if (err)
		goto out_free;

	FUNC7(msg, sk, skb);

	err = (flags & MSG_TRUNC) ? skb->len : copied;

	if (pfk->dump.dump != NULL &&
	    3 * FUNC0(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf)
		FUNC1(pfk);

out_free:
	FUNC4(sk, skb);
out:
	return err;
}