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
struct sockaddr_pkt {scalar_t__* spkt_device; int /*<<< orphan*/  spkt_protocol; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_priority; } ;
struct sk_buff {size_t data; size_t tail; int /*<<< orphan*/  priority; struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct net_device {int flags; size_t mtu; size_t hard_header_len; scalar_t__ header_ops; } ;
struct msghdr {int msg_namelen; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int FUNC11 (struct msghdr*,struct sock*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC12 (struct sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct kiocb *iocb, struct socket *sock,
			       struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct sockaddr_pkt *saddr = (struct sockaddr_pkt *)msg->msg_name;
	struct sk_buff *skb;
	struct net_device *dev;
	__be16 proto = 0;
	int err;

	/*
	 *	Get and verify the address.
	 */

	if (saddr) {
		if (msg->msg_namelen < sizeof(struct sockaddr))
			return -EINVAL;
		if (msg->msg_namelen == sizeof(struct sockaddr_pkt))
			proto = saddr->spkt_protocol;
	} else
		return -ENOTCONN;	/* SOCK_PACKET must be sent giving an address */

	/*
	 *	Find the device first to size check it
	 */

	saddr->spkt_device[13] = 0;
	dev = FUNC1(FUNC10(sk), saddr->spkt_device);
	err = -ENODEV;
	if (dev == NULL)
		goto out_unlock;

	err = -ENETDOWN;
	if (!(dev->flags & IFF_UP))
		goto out_unlock;

	/*
	 * You may not queue a frame bigger than the mtu. This is the lowest level
	 * raw protocol and you must do your own fragmentation at this level.
	 */

	err = -EMSGSIZE;
	if (len > dev->mtu + dev->hard_header_len)
		goto out_unlock;

	err = -ENOBUFS;
	skb = FUNC12(sk, len + FUNC0(dev), 0, GFP_KERNEL);

	/*
	 * If the write buffer is full, then tough. At this level the user
	 * gets to deal with the problem - do your own algorithmic backoffs.
	 * That's far more flexible.
	 */

	if (skb == NULL)
		goto out_unlock;

	/*
	 *	Fill it in
	 */

	/* FIXME: Save some space for broken drivers that write a
	 * hard header at transmission time by themselves. PPP is the
	 * notable one here. This should really be fixed at the driver level.
	 */
	FUNC7(skb, FUNC0(dev));
	FUNC8(skb);

	/* Try to align data part correctly */
	if (dev->header_ops) {
		skb->data -= dev->hard_header_len;
		skb->tail -= dev->hard_header_len;
		if (len < dev->hard_header_len)
			FUNC8(skb);
	}

	/* Returns -EFAULT on error */
	err = FUNC5(FUNC6(skb, len), msg->msg_iov, len);
	skb->protocol = proto;
	skb->dev = dev;
	skb->priority = sk->sk_priority;
	if (err)
		goto out_free;
	err = FUNC11(msg, sk, FUNC9(skb));
	if (err < 0)
		goto out_free;

	/*
	 *	Now send it
	 */

	FUNC3(skb);
	FUNC2(dev);
	return len;

out_free:
	FUNC4(skb);
out_unlock:
	if (dev)
		FUNC2(dev);
	return err;
}