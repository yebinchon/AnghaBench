#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_flowinfo; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ protocol; } ;
struct msghdr {int msg_flags; scalar_t__ msg_name; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;
struct TYPE_7__ {scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_1__ rxopt; } ;
struct inet_sock {scalar_t__ cmsg_flags; } ;
struct TYPE_12__ {scalar_t__ iif; } ;
struct TYPE_11__ {scalar_t__ partial_cov; } ;
struct TYPE_10__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int FUNC1 (struct sock*) ; 
 int MSG_DONTWAIT ; 
 int MSG_ERRQUEUE ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDP_MIB_INDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 TYPE_5__* FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sock*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC9 (struct sock*) ; 
 struct inet_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct msghdr*,struct sk_buff*) ; 
 TYPE_4__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (struct sk_buff*) ; 
 int FUNC17 (struct sock*,struct msghdr*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int FUNC20 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct sk_buff*,int,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct msghdr*,struct sock*,struct sk_buff*) ; 
 TYPE_2__* FUNC27 (struct sk_buff*) ; 
 scalar_t__ FUNC28 (struct sk_buff*) ; 

int FUNC29(struct kiocb *iocb, struct sock *sk,
		  struct msghdr *msg, size_t len,
		  int noblock, int flags, int *addr_len)
{
	struct ipv6_pinfo *np = FUNC9(sk);
	struct inet_sock *inet = FUNC10(sk);
	struct sk_buff *skb;
	unsigned int ulen, copied;
	int peeked;
	int err;
	int is_udplite = FUNC1(sk);
	int is_udp4;

	if (flags & MSG_ERRQUEUE)
		return FUNC17(sk, msg, len, addr_len);

try_again:
	skb = FUNC5(sk, flags | (noblock ? MSG_DONTWAIT : 0),
				  &peeked, &err);
	if (!skb)
		goto out;

	ulen = skb->len - sizeof(struct udphdr);
	copied = len;
	if (copied > ulen)
		copied = ulen;
	else if (copied < ulen)
		msg->msg_flags |= MSG_TRUNC;

	is_udp4 = (skb->protocol == FUNC8(ETH_P_IP));

	/*
	 * If checksum is needed at all, try to do it while copying the
	 * data.  If the data is truncated, or if we only want a partial
	 * coverage checksum (UDP-Lite), do it before the copy.
	 */

	if (copied < ulen || FUNC4(skb)->partial_cov) {
		if (FUNC28(skb))
			goto csum_copy_err;
	}

	if (FUNC22(skb))
		err = FUNC21(skb, sizeof(struct udphdr),
					      msg->msg_iov, copied       );
	else {
		err = FUNC20(skb, sizeof(struct udphdr), msg->msg_iov);
		if (err == -EINVAL)
			goto csum_copy_err;
	}
	if (err)
		goto out_free;

	if (!peeked) {
		if (is_udp4)
			FUNC3(FUNC25(sk),
					UDP_MIB_INDATAGRAMS, is_udplite);
		else
			FUNC2(FUNC25(sk),
					UDP_MIB_INDATAGRAMS, is_udplite);
	}

	FUNC26(msg, sk, skb);

	/* Copy the address. */
	if (msg->msg_name) {
		struct sockaddr_in6 *sin6;

		sin6 = (struct sockaddr_in6 *) msg->msg_name;
		sin6->sin6_family = AF_INET6;
		sin6->sin6_port = FUNC27(skb)->source;
		sin6->sin6_flowinfo = 0;
		sin6->sin6_scope_id = 0;

		if (is_udp4)
			FUNC14(&sin6->sin6_addr, 0, 0,
				      FUNC7(0xffff), FUNC12(skb)->saddr);
		else {
			FUNC13(&sin6->sin6_addr,
				       &FUNC16(skb)->saddr);
			if (FUNC15(&sin6->sin6_addr) & IPV6_ADDR_LINKLOCAL)
				sin6->sin6_scope_id = FUNC0(skb)->iif;
		}
		*addr_len = sizeof(*sin6);
	}
	if (is_udp4) {
		if (inet->cmsg_flags)
			FUNC11(msg, skb);
	} else {
		if (np->rxopt.all)
			FUNC6(sk, msg, skb);
	}

	err = copied;
	if (flags & MSG_TRUNC)
		err = ulen;

out_free:
	FUNC23(sk, skb);
out:
	return err;

csum_copy_err:
	FUNC18(sk);
	if (!FUNC24(sk, skb, flags)) {
		if (is_udp4)
			FUNC3(FUNC25(sk),
					UDP_MIB_INERRORS, is_udplite);
		else
			FUNC2(FUNC25(sk),
					UDP_MIB_INERRORS, is_udplite);
	}
	FUNC19(sk);

	if (flags & MSG_DONTWAIT)
		return -EAGAIN;
	goto try_again;
}