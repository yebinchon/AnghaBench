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
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sockaddr_dn {int dummy; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  sk_sleep; TYPE_1__* sk_socket; scalar_t__ sk_dst_cache; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; int msg_namelen; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct dn_skb_cb {int nsp_flags; } ;
struct dn_scp {size_t segsize_rem; unsigned char services_rem; scalar_t__ seg_total; int /*<<< orphan*/  persist; int /*<<< orphan*/  flowrem_dat; int /*<<< orphan*/  flowrem_oth; int /*<<< orphan*/  persist_fxn; struct sk_buff_head other_xmit_queue; struct sk_buff_head data_xmit_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DN_MAX_NSP_DATA_HEADER ; 
 struct dn_scp* FUNC1 (struct sock*) ; 
 struct dn_skb_cb* FUNC2 (struct sk_buff*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int EOPNOTSUPP ; 
 int EPIPE ; 
 int EWOULDBLOCK ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_MORE ; 
 int MSG_NOSIGNAL ; 
 int MSG_OOB ; 
 int MSG_TRYHARD ; 
 unsigned char NSP_FC_MASK ; 
 unsigned char NSP_FC_NONE ; 
 unsigned char NSP_FC_SCMC ; 
 unsigned char NSP_FC_SRC ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SOCK_ASYNC_WAITDATA ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct sk_buff* FUNC4 (struct sock*,scalar_t__,int,int*) ; 
 int FUNC5 (struct sock*,struct sockaddr_dn*,int,long*,int) ; 
 size_t FUNC6 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dn_nsp_xmit_timeout ; 
 scalar_t__ FUNC9 (struct dn_scp*,struct sk_buff_head*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,long*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,scalar_t__) ; 
 int FUNC24 (struct sock*) ; 
 int FUNC25 (long) ; 
 long FUNC26 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC27(struct kiocb *iocb, struct socket *sock,
		      struct msghdr *msg, size_t size)
{
	struct sock *sk = sock->sk;
	struct dn_scp *scp = FUNC1(sk);
	size_t mss;
	struct sk_buff_head *queue = &scp->data_xmit_queue;
	int flags = msg->msg_flags;
	int err = 0;
	size_t sent = 0;
	int addr_len = msg->msg_namelen;
	struct sockaddr_dn *addr = (struct sockaddr_dn *)msg->msg_name;
	struct sk_buff *skb = NULL;
	struct dn_skb_cb *cb;
	size_t len;
	unsigned char fctype;
	long timeo;

	if (flags & ~(MSG_TRYHARD|MSG_OOB|MSG_DONTWAIT|MSG_EOR|MSG_NOSIGNAL|MSG_MORE|MSG_CMSG_COMPAT))
		return -EOPNOTSUPP;

	if (addr_len && (addr_len != sizeof(struct sockaddr_dn)))
		return -EINVAL;

	FUNC13(sk);
	timeo = FUNC26(sk, flags & MSG_DONTWAIT);
	/*
	 * The only difference between stream sockets and sequenced packet
	 * sockets is that the stream sockets always behave as if MSG_EOR
	 * has been set.
	 */
	if (sock->type == SOCK_STREAM) {
		if (flags & MSG_EOR) {
			err = -EINVAL;
			goto out;
		}
		flags |= MSG_EOR;
	}


	err = FUNC5(sk, addr, addr_len, &timeo, flags);
	if (err)
		goto out_err;

	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		err = -EPIPE;
		if (!(flags & MSG_NOSIGNAL))
			FUNC17(SIGPIPE, current, 0);
		goto out_err;
	}

	if ((flags & MSG_TRYHARD) && sk->sk_dst_cache)
		FUNC10(&sk->sk_dst_cache);

	mss = scp->segsize_rem;
	fctype = scp->services_rem & NSP_FC_MASK;

	mss = FUNC6(sk, flags);

	if (flags & MSG_OOB) {
		queue = &scp->other_xmit_queue;
		if (size > mss) {
			err = -EMSGSIZE;
			goto out;
		}
	}

	scp->persist_fxn = dn_nsp_xmit_timeout;

	while(sent < size) {
		err = FUNC24(sk);
		if (err)
			goto out;

		if (FUNC19(current)) {
			err = FUNC25(timeo);
			goto out;
		}

		/*
		 * Calculate size that we wish to send.
		 */
		len = size - sent;

		if (len > mss)
			len = mss;

		/*
		 * Wait for queue size to go down below the window
		 * size.
		 */
		if (FUNC9(scp, queue, flags)) {
			FUNC0(wait);

			if (flags & MSG_DONTWAIT) {
				err = -EWOULDBLOCK;
				goto out;
			}

			FUNC15(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
			FUNC18(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
			FUNC21(sk, &timeo,
				      !FUNC9(scp, queue, flags));
			FUNC3(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
			FUNC11(sk->sk_sleep, &wait);
			continue;
		}

		/*
		 * Get a suitably sized skb.
		 * 64 is a bit of a hack really, but its larger than any
		 * link-layer headers and has served us well as a good
		 * guess as to their real length.
		 */
		skb = FUNC4(sk, len + 64 + DN_MAX_NSP_DATA_HEADER,
					 flags & MSG_DONTWAIT, &err);

		if (err)
			break;

		if (!skb)
			continue;

		cb = FUNC2(skb);

		FUNC23(skb, 64 + DN_MAX_NSP_DATA_HEADER);

		if (FUNC14(FUNC22(skb, len), msg->msg_iov, len)) {
			err = -EFAULT;
			goto out;
		}

		if (flags & MSG_OOB) {
			cb->nsp_flags = 0x30;
			if (fctype != NSP_FC_NONE)
				scp->flowrem_oth--;
		} else {
			cb->nsp_flags = 0x00;
			if (scp->seg_total == 0)
				cb->nsp_flags |= 0x20;

			scp->seg_total += len;

			if (((sent + len) == size) && (flags & MSG_EOR)) {
				cb->nsp_flags |= 0x40;
				scp->seg_total = 0;
				if (fctype == NSP_FC_SCMC)
					scp->flowrem_dat--;
			}
			if (fctype == NSP_FC_SRC)
				scp->flowrem_dat--;
		}

		sent += len;
		FUNC8(sk, skb, sk->sk_allocation, flags & MSG_OOB);
		skb = NULL;

		scp->persist = FUNC7(sk);

	}
out:

	FUNC12(skb);

	FUNC16(sk);

	return sent ? sent : err;

out_err:
	err = FUNC20(sk, flags, err);
	FUNC16(sk);
	return err;
}