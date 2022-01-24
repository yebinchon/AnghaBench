#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_zero; scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct inet_sock {scalar_t__ cmsg_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EOPNOTSUPP ; 
 int MSG_ERRQUEUE ; 
 int MSG_OOB ; 
 int MSG_TRUNC ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sock*,struct msghdr*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
		       size_t len, int noblock, int flags, int *addr_len)
{
	struct inet_sock *inet = FUNC0(sk);
	size_t copied = 0;
	int err = -EOPNOTSUPP;
	struct sockaddr_in *sin = (struct sockaddr_in *)msg->msg_name;
	struct sk_buff *skb;

	if (flags & MSG_OOB)
		goto out;

	if (flags & MSG_ERRQUEUE) {
		err = FUNC3(sk, msg, len, addr_len);
		goto out;
	}

	skb = FUNC7(sk, flags, noblock, &err);
	if (!skb)
		goto out;

	copied = skb->len;
	if (len < copied) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	err = FUNC5(skb, 0, msg->msg_iov, copied);
	if (err)
		goto done;

	FUNC8(msg, sk, skb);

	/* Copy the address. */
	if (sin) {
		sin->sin_family = AF_INET;
		sin->sin_addr.s_addr = FUNC2(skb)->saddr;
		sin->sin_port = 0;
		FUNC4(&sin->sin_zero, 0, sizeof(sin->sin_zero));
		*addr_len = sizeof(*sin);
	}
	if (inet->cmsg_flags)
		FUNC1(msg, skb);
	if (flags & MSG_TRUNC)
		copied = skb->len;
done:
	FUNC6(sk, skb);
out:
	if (err)
		return err;
	return copied;
}