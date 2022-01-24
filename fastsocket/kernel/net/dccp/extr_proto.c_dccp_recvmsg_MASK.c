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
struct sock {scalar_t__ sk_state; int sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; } ;
struct kiocb {int dummy; } ;
struct dccp_hdr {int dccph_type; } ;

/* Variables and functions */
 scalar_t__ DCCP_CLOSED ; 
 scalar_t__ DCCP_LISTEN ; 
#define  DCCP_PKT_CLOSE 132 
#define  DCCP_PKT_CLOSEREQ 131 
#define  DCCP_PKT_DATA 130 
#define  DCCP_PKT_DATAACK 129 
#define  DCCP_PKT_RESET 128 
 size_t EAGAIN ; 
 size_t EFAULT ; 
 size_t ENOTCONN ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct dccp_hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,long*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 size_t FUNC13 (long) ; 
 long FUNC14 (struct sock*,int) ; 

int FUNC15(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
		 size_t len, int nonblock, int flags, int *addr_len)
{
	const struct dccp_hdr *dh;
	long timeo;

	FUNC4(sk);

	if (sk->sk_state == DCCP_LISTEN) {
		len = -ENOTCONN;
		goto out;
	}

	timeo = FUNC14(sk, nonblock);

	do {
		struct sk_buff *skb = FUNC10(&sk->sk_receive_queue);

		if (skb == NULL)
			goto verify_sock_status;

		dh = FUNC1(skb);

		switch (dh->dccph_type) {
		case DCCP_PKT_DATA:
		case DCCP_PKT_DATAACK:
			goto found_ok_skb;

		case DCCP_PKT_CLOSE:
		case DCCP_PKT_CLOSEREQ:
			if (!(flags & MSG_PEEK))
				FUNC0(sk);
			/* fall through */
		case DCCP_PKT_RESET:
			FUNC3("found fin (%s) ok!\n",
				      FUNC2(dh->dccph_type));
			len = 0;
			goto found_fin_ok;
		default:
			FUNC3("packet_type=%s\n",
				      FUNC2(dh->dccph_type));
			FUNC7(sk, skb, 0);
		}
verify_sock_status:
		if (FUNC12(sk, SOCK_DONE)) {
			len = 0;
			break;
		}

		if (sk->sk_err) {
			len = FUNC11(sk);
			break;
		}

		if (sk->sk_shutdown & RCV_SHUTDOWN) {
			len = 0;
			break;
		}

		if (sk->sk_state == DCCP_CLOSED) {
			if (!FUNC12(sk, SOCK_DONE)) {
				/* This occurs when user tries to read
				 * from never connected socket.
				 */
				len = -ENOTCONN;
				break;
			}
			len = 0;
			break;
		}

		if (!timeo) {
			len = -EAGAIN;
			break;
		}

		if (FUNC6(current)) {
			len = FUNC13(timeo);
			break;
		}

		FUNC8(sk, &timeo);
		continue;
	found_ok_skb:
		if (len > skb->len)
			len = skb->len;
		else if (len < skb->len)
			msg->msg_flags |= MSG_TRUNC;

		if (FUNC9(skb, 0, msg->msg_iov, len)) {
			/* Exception. Bailout! */
			len = -EFAULT;
			break;
		}
	found_fin_ok:
		if (!(flags & MSG_PEEK))
			FUNC7(sk, skb, 0);
		break;
	} while (1);
out:
	FUNC5(sk);
	return len;
}