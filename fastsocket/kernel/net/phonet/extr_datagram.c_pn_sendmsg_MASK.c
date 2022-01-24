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
struct sockaddr_pn {scalar_t__ spn_family; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; int msg_namelen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/ * msg_name; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_PHONET ; 
 int EAFNOSUPPORT ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ MAX_PHONET_HEADER ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (struct sock*,struct sk_buff*,struct sockaddr_pn*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC5 (struct sock*,scalar_t__,int,int*) ; 

__attribute__((used)) static int FUNC6(struct kiocb *iocb, struct sock *sk,
			struct msghdr *msg, size_t len)
{
	struct sockaddr_pn *target;
	struct sk_buff *skb;
	int err;

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	if (msg->msg_name == NULL)
		return -EDESTADDRREQ;

	if (msg->msg_namelen < sizeof(struct sockaddr_pn))
		return -EINVAL;

	target = (struct sockaddr_pn *)msg->msg_name;
	if (target->spn_family != AF_PHONET)
		return -EAFNOSUPPORT;

	skb = FUNC5(sk, MAX_PHONET_HEADER + len,
					msg->msg_flags & MSG_DONTWAIT, &err);
	if (skb == NULL)
		return err;
	FUNC4(skb, MAX_PHONET_HEADER);

	err = FUNC1((void *)FUNC3(skb, len), msg->msg_iov, len);
	if (err < 0) {
		FUNC0(skb);
		return err;
	}

	/*
	 * Fill in the Phonet header and
	 * finally pass the packet forwards.
	 */
	err = FUNC2(sk, skb, target);

	/* If ok, return len. */
	return (err >= 0) ? len : err;
}