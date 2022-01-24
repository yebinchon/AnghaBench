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
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_flowinfo; scalar_t__ sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sock {int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct TYPE_4__ {scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_1__ rxopt; } ;
struct TYPE_6__ {scalar_t__ iif; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EAGAIN ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int MSG_DONTWAIT ; 
 int MSG_ERRQUEUE ; 
 int MSG_OOB ; 
 int MSG_TRUNC ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct msghdr*,struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sock*,struct msghdr*,size_t,int*) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*,int) ; 
 struct sk_buff* FUNC14 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC16(struct kiocb *iocb, struct sock *sk,
		  struct msghdr *msg, size_t len,
		  int noblock, int flags, int *addr_len)
{
	struct ipv6_pinfo *np = FUNC4(sk);
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)msg->msg_name;
	struct sk_buff *skb;
	size_t copied;
	int err;

	if (flags & MSG_OOB)
		return -EOPNOTSUPP;

	if (flags & MSG_ERRQUEUE)
		return FUNC8(sk, msg, len, addr_len);

	skb = FUNC14(sk, flags, noblock, &err);
	if (!skb)
		goto out;

	copied = skb->len;
	if (copied > len) {
		copied = len;
		msg->msg_flags |= MSG_TRUNC;
	}

	if (FUNC11(skb)) {
		err = FUNC10(skb, 0, msg->msg_iov, copied);
	} else if (msg->msg_flags&MSG_TRUNC) {
		if (FUNC1(skb))
			goto csum_copy_err;
		err = FUNC10(skb, 0, msg->msg_iov, copied);
	} else {
		err = FUNC9(skb, 0, msg->msg_iov);
		if (err == -EINVAL)
			goto csum_copy_err;
	}
	if (err)
		goto out_free;

	/* Copy the address. */
	if (sin6) {
		sin6->sin6_family = AF_INET6;
		sin6->sin6_port = 0;
		FUNC5(&sin6->sin6_addr, &FUNC7(skb)->saddr);
		sin6->sin6_flowinfo = 0;
		sin6->sin6_scope_id = 0;
		if (FUNC6(&sin6->sin6_addr) & IPV6_ADDR_LINKLOCAL)
			sin6->sin6_scope_id = FUNC0(skb)->iif;
		*addr_len = sizeof(*sin6);
	}

	FUNC15(msg, sk, skb);

	if (np->rxopt.all)
		FUNC3(sk, msg, skb);

	err = copied;
	if (flags & MSG_TRUNC)
		err = skb->len;

out_free:
	FUNC12(sk, skb);
out:
	return err;

csum_copy_err:
	FUNC13(sk, skb, flags);

	/* Error for blocking case is chosen to masquerade
	   as some normal condition.
	 */
	err = (flags&MSG_DONTWAIT) ? -EAGAIN : -EHOSTUNREACH;
	FUNC2(&sk->sk_drops);
	goto out;
}