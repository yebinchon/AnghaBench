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
struct x25_sock {int /*<<< orphan*/  dest_addr; scalar_t__ qbitincl; TYPE_1__* neighbour; int /*<<< orphan*/  interrupt_in_queue; } ;
struct socket {struct sock* sk; } ;
struct sockaddr_x25 {int /*<<< orphan*/  sx25_addr; int /*<<< orphan*/  sx25_family; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int* data; size_t len; } ;
struct msghdr {int msg_namelen; int msg_flags; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {scalar_t__ extended; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_X25 ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_OOB ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  SOCK_URGINLINE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  X25_EXT_MIN_LEN ; 
 int X25_Q_BIT ; 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC7 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC8 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct x25_sock* FUNC12 (struct sock*) ; 

__attribute__((used)) static int FUNC13(struct kiocb *iocb, struct socket *sock,
		       struct msghdr *msg, size_t size,
		       int flags)
{
	struct sock *sk = sock->sk;
	struct x25_sock *x25 = FUNC12(sk);
	struct sockaddr_x25 *sx25 = (struct sockaddr_x25 *)msg->msg_name;
	size_t copied;
	int qbit;
	struct sk_buff *skb;
	unsigned char *asmptr;
	int rc = -ENOTCONN;

	/*
	 * This works for seqpacket too. The receiver has ordered the queue for
	 * us! We do one quick check first though
	 */
	if (sk->sk_state != TCP_ESTABLISHED)
		goto out;

	msg->msg_namelen = 0;
	if (flags & MSG_OOB) {
		rc = -EINVAL;
		if (FUNC10(sk, SOCK_URGINLINE) ||
		    !FUNC5(&x25->interrupt_in_queue))
			goto out;

		skb = FUNC3(&x25->interrupt_in_queue);

		FUNC6(skb, X25_STD_MIN_LEN);

		/*
		 *	No Q bit information on Interrupt data.
		 */
		if (x25->qbitincl) {
			asmptr  = FUNC7(skb, 1);
			*asmptr = 0x00;
		}

		msg->msg_flags |= MSG_OOB;
	} else {
		/* Now we can treat all alike */
		skb = FUNC8(sk, flags & ~MSG_DONTWAIT,
					flags & MSG_DONTWAIT, &rc);
		if (!skb)
			goto out;

		qbit = (skb->data[0] & X25_Q_BIT) == X25_Q_BIT;

		FUNC6(skb, x25->neighbour->extended ?
				X25_EXT_MIN_LEN : X25_STD_MIN_LEN);

		if (x25->qbitincl) {
			asmptr  = FUNC7(skb, 1);
			*asmptr = qbit;
		}
	}

	FUNC9(skb);
	copied = skb->len;

	if (copied > size) {
		copied = size;
		msg->msg_flags |= MSG_TRUNC;
	}

	/* Currently, each datagram always contains a complete record */
	msg->msg_flags |= MSG_EOR;

	rc = FUNC2(skb, 0, msg->msg_iov, copied);
	if (rc)
		goto out_free_dgram;

	if (sx25) {
		sx25->sx25_family = AF_X25;
		sx25->sx25_addr   = x25->dest_addr;
		msg->msg_namelen = sizeof(*sx25);
	}

	FUNC0(sk);
	FUNC11(sk);
	FUNC1(sk);
	rc = copied;
out_free_dgram:
	FUNC4(sk, skb);
out:
	return rc;
}