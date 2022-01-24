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
struct sock {int sk_state; } ;
struct sk_buff {size_t len; } ;
struct pep_sock {int /*<<< orphan*/  ctrlreq_queue; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MSG_EOR ; 
 int MSG_OOB ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  PN_PIPE_NO_ERROR ; 
 int /*<<< orphan*/  SOCK_URGINLINE ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 scalar_t__ TCP_CLOSE_WAIT ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sock*,int,int,int*) ; 
 scalar_t__ FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct kiocb *iocb, struct sock *sk,
			struct msghdr *msg, size_t len, int noblock,
			int flags, int *addr_len)
{
	struct sk_buff *skb;
	int err;

	if (FUNC10(1 << sk->sk_state & (TCPF_LISTEN | TCPF_CLOSE)))
		return -ENOTCONN;

	if ((flags & MSG_OOB) || FUNC9(sk, SOCK_URGINLINE)) {
		/* Dequeue and acknowledge control request */
		struct pep_sock *pn = FUNC2(sk);

		skb = FUNC6(&pn->ctrlreq_queue);
		if (skb) {
			FUNC1(sk, skb, PN_PIPE_NO_ERROR,
						GFP_KERNEL);
			msg->msg_flags |= MSG_OOB;
			goto copy;
		}
		if (flags & MSG_OOB)
			return -EINVAL;
	}

	skb = FUNC8(sk, flags, noblock, &err);
	FUNC0(sk);
	if (skb == NULL) {
		if (err == -ENOTCONN && sk->sk_state == TCP_CLOSE_WAIT)
			err = -ECONNRESET;
		FUNC4(sk);
		return err;
	}

	if (sk->sk_state == TCP_ESTABLISHED)
		FUNC3(sk);
	FUNC4(sk);
copy:
	msg->msg_flags |= MSG_EOR;
	if (skb->len > len)
		msg->msg_flags |= MSG_TRUNC;
	else
		len = skb->len;

	err = FUNC5(skb, 0, msg->msg_iov, len);
	if (!err)
		err = (flags & MSG_TRUNC) ? skb->len : len;

	FUNC7(sk, skb);
	return err;
}