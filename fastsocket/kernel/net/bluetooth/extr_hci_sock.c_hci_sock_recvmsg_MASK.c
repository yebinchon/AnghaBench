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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; } ;
struct msghdr {int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int EOPNOTSUPP ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct msghdr*,struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct kiocb *iocb, struct socket *sock,
				struct msghdr *msg, size_t len, int flags)
{
	int noblock = flags & MSG_DONTWAIT;
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	int copied, err;

	FUNC0("sock %p, sk %p", sock, sk);

	if (flags & (MSG_OOB))
		return -EOPNOTSUPP;

	msg->msg_namelen = 0;

	if (sk->sk_state == BT_CLOSED)
		return 0;

	if (!(skb = FUNC4(sk, flags, noblock, &err)))
		return err;

	copied = skb->len;
	if (len < copied) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	FUNC5(skb);
	err = FUNC2(skb, 0, msg->msg_iov, copied);

	FUNC1(sk, msg, skb);

	FUNC3(sk, skb);

	return err ? : copied;
}