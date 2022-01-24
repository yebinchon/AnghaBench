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
struct sock {int sk_state; TYPE_1__* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct pep_sock {int /*<<< orphan*/  tx_credits; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ECONNRESET ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ MAX_PHONET_HEADER ; 
 scalar_t__ MAX_PNPIPE_HEADER ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_OOB ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 int TCP_CLOSE_WAIT ; 
 int TCP_ESTABLISHED ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct pep_sock* FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sock*,long*) ; 
 int FUNC13 (struct sock*,long*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC16 (struct sock*,scalar_t__,int,int*) ; 
 int FUNC17 (long) ; 
 long FUNC18 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC19(struct kiocb *iocb, struct sock *sk,
			struct msghdr *msg, size_t len)
{
	struct pep_sock *pn = FUNC7(sk);
	struct sk_buff *skb = NULL;
	long timeo;
	int flags = msg->msg_flags;
	int err, done;

	if (msg->msg_flags & MSG_OOB || !(msg->msg_flags & MSG_EOR))
		return -EOPNOTSUPP;

	FUNC5(sk);
	timeo = FUNC18(sk, flags & MSG_DONTWAIT);
	if ((1 << sk->sk_state) & (TCPF_LISTEN|TCPF_CLOSE)) {
		err = -ENOTCONN;
		goto out;
	}
	if (sk->sk_state != TCP_ESTABLISHED) {
		/* Wait until the pipe gets to enabled state */
disabled:
		err = FUNC12(sk, &timeo);
		if (err)
			goto out;

		if (sk->sk_state == TCP_CLOSE_WAIT) {
			err = -ECONNRESET;
			goto out;
		}
	}
	FUNC0(sk->sk_state != TCP_ESTABLISHED);

	/* Wait until flow control allows TX */
	done = FUNC2(&pn->tx_credits);
	while (!done) {
		FUNC1(wait);

		if (!timeo) {
			err = -EAGAIN;
			goto out;
		}
		if (FUNC11(current)) {
			err = FUNC17(timeo);
			goto out;
		}

		FUNC9(&sk->sk_socket->wait, &wait,
				TASK_INTERRUPTIBLE);
		done = FUNC13(sk, &timeo, FUNC2(&pn->tx_credits));
		FUNC3(&sk->sk_socket->wait, &wait);

		if (sk->sk_state != TCP_ESTABLISHED)
			goto disabled;
	}

	if (!skb) {
		skb = FUNC16(sk, MAX_PNPIPE_HEADER + len,
						flags & MSG_DONTWAIT, &err);
		if (skb == NULL)
			goto out;
		FUNC15(skb, MAX_PHONET_HEADER + 3);

		if (sk->sk_state != TCP_ESTABLISHED ||
		    !FUNC2(&pn->tx_credits))
			goto disabled; /* sock_alloc_send_skb might sleep */
	}

	err = FUNC6(FUNC14(skb, len), msg->msg_iov, len);
	if (err < 0)
		goto out;

	err = FUNC8(sk, skb);
	if (err >= 0)
		err = len; /* success! */
	skb = NULL;
out:
	FUNC10(sk);
	FUNC4(skb);
	return err;
}