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
struct socket {struct sock* sk; } ;
struct sockaddr_can {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t len; int /*<<< orphan*/  cb; int /*<<< orphan*/  data; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct kiocb *iocb, struct socket *sock,
		       struct msghdr *msg, size_t size, int flags)
{
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	int error = 0;
	int noblock;
	int err;

	noblock =  flags & MSG_DONTWAIT;
	flags   &= ~MSG_DONTWAIT;

	msg->msg_namelen = 0;
	skb = FUNC3(sk, flags, noblock, &error);
	if (!skb)
		return error;

	if (skb->len < size)
		size = skb->len;

	err = FUNC1(msg->msg_iov, skb->data, size);
	if (err < 0) {
		FUNC2(sk, skb);
		return err;
	}

	FUNC4(msg, sk, skb);

	if (msg->msg_name) {
		msg->msg_namelen = sizeof(struct sockaddr_can);
		FUNC0(msg->msg_name, skb->cb, msg->msg_namelen);
	}

	FUNC2(sk, skb);

	return size;
}