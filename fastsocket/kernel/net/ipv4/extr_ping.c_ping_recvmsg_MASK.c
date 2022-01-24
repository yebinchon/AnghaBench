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
struct sockaddr_in {int /*<<< orphan*/  sin_zero; TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct msghdr {int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct inet_sock {scalar_t__ cmsg_flags; int /*<<< orphan*/  num; } ;
struct TYPE_4__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EOPNOTSUPP ; 
 int MSG_ERRQUEUE ; 
 int MSG_OOB ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sock*,struct msghdr*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
			size_t len, int noblock, int flags, int *addr_len)
{
	struct inet_sock *isk = FUNC0(sk);
	struct sockaddr_in *sin = (struct sockaddr_in *)msg->msg_name;
	struct sk_buff *skb;
	int copied, err;

	FUNC5("ping_recvmsg(sk=%p,sk->num=%u)\n", isk, isk->num);

	err = -EOPNOTSUPP;
	if (flags & MSG_OOB)
		goto out;

	if (flags & MSG_ERRQUEUE)
		return FUNC3(sk, msg, len, addr_len);

	skb = FUNC8(sk, flags, noblock, &err);
	if (!skb)
		goto out;

	copied = skb->len;
	if (copied > len) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	/* Don't bother checking the checksum */
	err = FUNC6(skb, 0, msg->msg_iov, copied);
	if (err)
		goto done;

	FUNC9(msg, sk, skb);

	/* Copy the address. */
	if (sin) {
		sin->sin_family = AF_INET;
		sin->sin_port = 0 /* skb->h.uh->source */;
		sin->sin_addr.s_addr = FUNC2(skb)->saddr;
		FUNC4(sin->sin_zero, 0, sizeof(sin->sin_zero));
		*addr_len = sizeof(*sin);
	}
	if (isk->cmsg_flags)
		FUNC1(msg, skb);
	err = copied;

done:
	FUNC7(sk, skb);
out:
	FUNC5("ping_recvmsg -> %d\n", err);
	return err;
}