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
typedef  int /*<<< orphan*/  u16 ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; struct sk_buff* sk_send_head; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct l2cap_pinfo {int mode; size_t omtu; size_t max_pdu_size; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
#define  L2CAP_MODE_BASIC 130 
#define  L2CAP_MODE_ERTM 129 
#define  L2CAP_MODE_STREAMING 128 
 int /*<<< orphan*/  L2CAP_SDU_UNSEGMENTED ; 
 int MSG_OOB ; 
 int FUNC2 (struct sk_buff*) ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sock*,struct msghdr*,size_t) ; 
 struct sk_buff* FUNC6 (struct sock*,struct msghdr*,size_t) ; 
 struct sk_buff* FUNC7 (struct sock*,struct msghdr*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 int FUNC9 (struct sock*) ; 
 struct l2cap_pinfo* FUNC10 (struct sock*) ; 
 int FUNC11 (struct sock*,struct msghdr*,size_t) ; 
 int FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct kiocb *iocb, struct socket *sock, struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct l2cap_pinfo *pi = FUNC10(sk);
	struct sk_buff *skb;
	u16 control;
	int err;

	FUNC0("sock %p, sk %p", sock, sk);

	err = FUNC15(sk);
	if (err)
		return err;

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	/* Check outgoing MTU */
	if (sk->sk_type == SOCK_SEQPACKET && pi->mode == L2CAP_MODE_BASIC
			&& len > pi->omtu)
		return -EINVAL;

	FUNC13(sk);

	if (sk->sk_state != BT_CONNECTED) {
		err = -ENOTCONN;
		goto done;
	}

	/* Connectionless channel */
	if (sk->sk_type == SOCK_DGRAM) {
		skb = FUNC6(sk, msg, len);
		err = FUNC8(sk, skb);
		goto done;
	}

	switch (pi->mode) {
	case L2CAP_MODE_BASIC:
		/* Create a basic PDU */
		skb = FUNC5(sk, msg, len);
		if (FUNC1(skb)) {
			err = FUNC2(skb);
			goto done;
		}

		err = FUNC8(sk, skb);
		if (!err)
			err = len;
		break;

	case L2CAP_MODE_ERTM:
	case L2CAP_MODE_STREAMING:
		/* Entire SDU fits into one PDU */
		if (len <= pi->max_pdu_size) {
			control = L2CAP_SDU_UNSEGMENTED;
			skb = FUNC7(sk, msg, len, control, 0);
			if (FUNC1(skb)) {
				err = FUNC2(skb);
				goto done;
			}
			FUNC4(FUNC3(sk), skb);
			if (sk->sk_send_head == NULL)
				sk->sk_send_head = skb;
		} else {
		/* Segment SDU into multiples PDUs */
			err = FUNC11(sk, msg, len);
			if (err < 0)
				goto done;
		}

		if (pi->mode == L2CAP_MODE_STREAMING)
			err = FUNC12(sk);
		else
			err = FUNC9(sk);

		if (!err)
			err = len;
		break;

	default:
		FUNC0("bad state %1.1x", pi->mode);
		err = -EINVAL;
	}

done:
	FUNC14(sk);
	return err;
}