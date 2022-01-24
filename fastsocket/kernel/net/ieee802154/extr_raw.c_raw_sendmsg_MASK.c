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
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  protocol; struct sock* sk; struct net_device* dev; } ;
struct net_device {unsigned int mtu; size_t name; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IEEE802154 ; 
 int EINVAL ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IEEE802154 ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct sk_buff* FUNC17 (struct sock*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 

__attribute__((used)) static int FUNC19(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
		       size_t size)
{
	struct net_device *dev;
	unsigned mtu;
	struct sk_buff *skb;
	int err;

	if (msg->msg_flags & MSG_OOB) {
		FUNC11("msg->msg_flags = 0x%x\n", msg->msg_flags);
		return -EOPNOTSUPP;
	}

	FUNC8(sk);
	if (!sk->sk_bound_dev_if)
		dev = FUNC3(FUNC18(sk), ARPHRD_IEEE802154);
	else
		dev = FUNC2(FUNC18(sk), sk->sk_bound_dev_if);
	FUNC12(sk);

	if (!dev) {
		FUNC11("no dev\n");
		err = -ENXIO;
		goto out;
	}

	mtu = dev->mtu;
	FUNC11("name = %s, mtu = %u\n", dev->name, mtu);

	if (size > mtu) {
		FUNC11("size = %Zu, mtu = %u\n", size, mtu);
		err = -EINVAL;
		goto out_dev;
	}

	skb = FUNC17(sk, FUNC0(dev) + size,
			msg->msg_flags & MSG_DONTWAIT, &err);
	if (!skb)
		goto out_dev;

	FUNC14(skb, FUNC1(dev));

	FUNC15(skb);
	FUNC16(skb);

	err = FUNC9(FUNC13(skb, size), msg->msg_iov, size);
	if (err < 0)
		goto out_skb;

	skb->dev = dev;
	skb->sk  = sk;
	skb->protocol = FUNC6(ETH_P_IEEE802154);

	FUNC4(dev);

	err = FUNC5(skb);
	if (err > 0)
		err = FUNC10(err);

	return err ?: size;

out_skb:
	FUNC7(skb);
out_dev:
	FUNC4(dev);
out:
	return err;
}