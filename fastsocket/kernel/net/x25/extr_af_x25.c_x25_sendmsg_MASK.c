#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sx25 ;
struct TYPE_4__ {int /*<<< orphan*/  x25_addr; } ;
struct x25_sock {int lci; scalar_t__ qbitincl; int /*<<< orphan*/  interrupt_out_queue; TYPE_2__* neighbour; TYPE_1__ dest_addr; } ;
struct socket {struct sock* sk; } ;
struct sockaddr_x25 {scalar_t__ sx25_family; TYPE_1__ sx25_addr; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; } ;
struct sk_buff {int* data; } ;
struct msghdr {int msg_flags; int msg_namelen; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ extended; } ;

/* Variables and functions */
 scalar_t__ AF_X25 ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int EISCONN ; 
 int EMSGSIZE ; 
 int ENETUNREACH ; 
 int ENOTCONN ; 
 int EPIPE ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_OOB ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_ESTABLISHED ; 
 void* X25_DATA ; 
 size_t X25_EXT_MIN_LEN ; 
 int X25_GFI_EXTSEQ ; 
 int X25_GFI_STDSEQ ; 
 void* X25_INTERRUPT ; 
 size_t X25_MAX_L2_LEN ; 
 int X25_Q_BIT ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 size_t X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_x25*,struct sockaddr_x25*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 unsigned char* FUNC9 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct sk_buff* FUNC15 (struct sock*,size_t,int,int*) ; 
 scalar_t__ FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int FUNC19 (struct sock*,struct sk_buff*) ; 
 struct x25_sock* FUNC20 (struct sock*) ; 

__attribute__((used)) static int FUNC21(struct kiocb *iocb, struct socket *sock,
		       struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct x25_sock *x25 = FUNC20(sk);
	struct sockaddr_x25 *usx25 = (struct sockaddr_x25 *)msg->msg_name;
	struct sockaddr_x25 sx25;
	struct sk_buff *skb;
	unsigned char *asmptr;
	int noblock = msg->msg_flags & MSG_DONTWAIT;
	size_t size;
	int qbit = 0, rc = -EINVAL;

	if (msg->msg_flags & ~(MSG_DONTWAIT|MSG_OOB|MSG_EOR|MSG_CMSG_COMPAT))
		goto out;

	/* we currently don't support segmented records at the user interface */
	if (!(msg->msg_flags & (MSG_EOR|MSG_OOB)))
		goto out;

	rc = -EADDRNOTAVAIL;
	if (FUNC16(sk, SOCK_ZAPPED))
		goto out;

	rc = -EPIPE;
	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		FUNC7(SIGPIPE, current, 0);
		goto out;
	}

	rc = -ENETUNREACH;
	if (!x25->neighbour)
		goto out;

	if (usx25) {
		rc = -EINVAL;
		if (msg->msg_namelen < sizeof(sx25))
			goto out;
		FUNC4(&sx25, usx25, sizeof(sx25));
		rc = -EISCONN;
		if (FUNC17(x25->dest_addr.x25_addr, sx25.sx25_addr.x25_addr))
			goto out;
		rc = -EINVAL;
		if (sx25.sx25_family != AF_X25)
			goto out;
	} else {
		/*
		 *	FIXME 1003.1g - if the socket is like this because
		 *	it has become closed (not started closed) we ought
		 *	to SIGPIPE, EPIPE;
		 */
		rc = -ENOTCONN;
		if (sk->sk_state != TCP_ESTABLISHED)
			goto out;

		sx25.sx25_family = AF_X25;
		sx25.sx25_addr   = x25->dest_addr;
	}

	/* Sanity check the packet size */
	if (len > 65535) {
		rc = -EMSGSIZE;
		goto out;
	}

	FUNC0(sk, "x25_sendmsg: sendto: Addresses built.\n");

	/* Build a packet */
	FUNC0(sk, "x25_sendmsg: sendto: building packet.\n");

	if ((msg->msg_flags & MSG_OOB) && len > 32)
		len = 32;

	size = len + X25_MAX_L2_LEN + X25_EXT_MIN_LEN;

	skb = FUNC15(sk, size, noblock, &rc);
	if (!skb)
		goto out;
	FUNC1(skb)->flags = msg->msg_flags;

	FUNC12(skb, X25_MAX_L2_LEN + X25_EXT_MIN_LEN);

	/*
	 *	Put the data on the end
	 */
	FUNC0(sk, "x25_sendmsg: Copying user data\n");

	FUNC13(skb);
	FUNC10(skb, len);

	rc = FUNC5(FUNC14(skb), msg->msg_iov, len);
	if (rc)
		goto out_kfree_skb;

	/*
	 *	If the Q BIT Include socket option is in force, the first
	 *	byte of the user data is the logical value of the Q Bit.
	 */
	if (x25->qbitincl) {
		qbit = skb->data[0];
		FUNC8(skb, 1);
	}

	/*
	 *	Push down the X.25 header
	 */
	FUNC0(sk, "x25_sendmsg: Building X.25 Header.\n");

	if (msg->msg_flags & MSG_OOB) {
		if (x25->neighbour->extended) {
			asmptr    = FUNC9(skb, X25_STD_MIN_LEN);
			*asmptr++ = ((x25->lci >> 8) & 0x0F) | X25_GFI_EXTSEQ;
			*asmptr++ = (x25->lci >> 0) & 0xFF;
			*asmptr++ = X25_INTERRUPT;
		} else {
			asmptr    = FUNC9(skb, X25_STD_MIN_LEN);
			*asmptr++ = ((x25->lci >> 8) & 0x0F) | X25_GFI_STDSEQ;
			*asmptr++ = (x25->lci >> 0) & 0xFF;
			*asmptr++ = X25_INTERRUPT;
		}
	} else {
		if (x25->neighbour->extended) {
			/* Build an Extended X.25 header */
			asmptr    = FUNC9(skb, X25_EXT_MIN_LEN);
			*asmptr++ = ((x25->lci >> 8) & 0x0F) | X25_GFI_EXTSEQ;
			*asmptr++ = (x25->lci >> 0) & 0xFF;
			*asmptr++ = X25_DATA;
			*asmptr++ = X25_DATA;
		} else {
			/* Build an Standard X.25 header */
			asmptr    = FUNC9(skb, X25_STD_MIN_LEN);
			*asmptr++ = ((x25->lci >> 8) & 0x0F) | X25_GFI_STDSEQ;
			*asmptr++ = (x25->lci >> 0) & 0xFF;
			*asmptr++ = X25_DATA;
		}

		if (qbit)
			skb->data[0] |= X25_Q_BIT;
	}

	FUNC0(sk, "x25_sendmsg: Built header.\n");
	FUNC0(sk, "x25_sendmsg: Transmitting buffer\n");

	rc = -ENOTCONN;
	if (sk->sk_state != TCP_ESTABLISHED)
		goto out_kfree_skb;

	if (msg->msg_flags & MSG_OOB)
		FUNC11(&x25->interrupt_out_queue, skb);
	else {
		rc = FUNC19(sk, skb);
		len = rc;
		if (rc < 0)
			FUNC2(skb);
		else if (x25->qbitincl)
			len++;
	}

	/*
	 * lock_sock() is currently only used to serialize this x25_kick()
	 * against input-driven x25_kick() calls. It currently only blocks
	 * incoming packets for this socket and does not protect against
	 * any other socket state changes and is not called from anywhere
	 * else. As x25_kick() cannot block and as long as all socket
	 * operations are BKL-wrapped, we don't need take to care about
	 * purging the backlog queue in x25_release().
	 *
	 * Using lock_sock() to protect all socket operations entirely
	 * (and making the whole x25 stack SMP aware) unfortunately would
	 * require major changes to {send,recv}msg and skb allocation methods.
	 * -> 2.5 ;)
	 */
	FUNC3(sk);
	FUNC18(sk);
	FUNC6(sk);
	rc = len;
out:
	return rc;
out_kfree_skb:
	FUNC2(skb);
	goto out;
}