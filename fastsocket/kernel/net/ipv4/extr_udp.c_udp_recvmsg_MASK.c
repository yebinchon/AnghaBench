#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_zero; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct inet_sock {scalar_t__ cmsg_flags; } ;
struct TYPE_8__ {scalar_t__ partial_cov; } ;
struct TYPE_7__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct sock*) ; 
 int MSG_DONTWAIT ; 
 int MSG_ERRQUEUE ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDP_MIB_INDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sock*,int,int*,int*) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sock*,struct msghdr*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int FUNC11 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*,int,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct msghdr*,struct sock*,struct sk_buff*) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 

int FUNC20(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
		size_t len, int noblock, int flags, int *addr_len)
{
	struct inet_sock *inet = FUNC4(sk);
	struct sockaddr_in *sin = (struct sockaddr_in *)msg->msg_name;
	struct sk_buff *skb;
	unsigned int ulen, copied;
	int peeked;
	int err;
	int is_udplite = FUNC0(sk);

	if (flags & MSG_ERRQUEUE)
		return FUNC7(sk, msg, len, addr_len);

try_again:
	skb = FUNC3(sk, flags | (noblock ? MSG_DONTWAIT : 0),
				  &peeked, &err);
	if (!skb)
		goto out;

	ulen = skb->len - sizeof(struct udphdr);
	copied = len;
	if (copied > ulen)
		copied = ulen;
	else if (copied < ulen)
		msg->msg_flags |= MSG_TRUNC;

	/*
	 * If checksum is needed at all, try to do it while copying the
	 * data.  If the data is truncated, or if we only want a partial
	 * coverage checksum (UDP-Lite), do it before the copy.
	 */

	if (copied < ulen || FUNC2(skb)->partial_cov) {
		if (FUNC19(skb))
			goto csum_copy_err;
	}

	if (FUNC13(skb))
		err = FUNC12(skb, sizeof(struct udphdr),
					      msg->msg_iov, copied);
	else {
		err = FUNC11(skb,
						       sizeof(struct udphdr),
						       msg->msg_iov);

		if (err == -EINVAL)
			goto csum_copy_err;
	}

	if (err)
		goto out_free;

	if (!peeked)
		FUNC1(FUNC16(sk),
				UDP_MIB_INDATAGRAMS, is_udplite);

	FUNC17(msg, sk, skb);

	/* Copy the address. */
	if (sin) {
		sin->sin_family = AF_INET;
		sin->sin_port = FUNC18(skb)->source;
		sin->sin_addr.s_addr = FUNC6(skb)->saddr;
		FUNC9(sin->sin_zero, 0, sizeof(sin->sin_zero));
		*addr_len = sizeof(*sin);
	}
	if (inet->cmsg_flags)
		FUNC5(msg, skb);

	err = copied;
	if (flags & MSG_TRUNC)
		err = ulen;

out_free:
	FUNC14(sk, skb);
out:
	return err;

csum_copy_err:
	FUNC8(sk);
	if (!FUNC15(sk, skb, flags))
		FUNC1(FUNC16(sk), UDP_MIB_INERRORS, is_udplite);
	FUNC10(sk);

	if (noblock)
		return -EAGAIN;
	goto try_again;
}