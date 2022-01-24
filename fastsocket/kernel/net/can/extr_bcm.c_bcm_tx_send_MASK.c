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
struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_iov; } ;

/* Variables and functions */
 int CFSIZ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MHSIZ ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct msghdr *msg, int ifindex, struct sock *sk)
{
	struct sk_buff *skb;
	struct net_device *dev;
	int err;

	/* we need a real device to send frames */
	if (!ifindex)
		return -ENODEV;

	skb = FUNC0(CFSIZ, GFP_KERNEL);

	if (!skb)
		return -ENOMEM;

	err = FUNC5(FUNC6(skb, CFSIZ), msg->msg_iov, CFSIZ);
	if (err < 0) {
		FUNC4(skb);
		return err;
	}

	dev = FUNC2(&init_net, ifindex);
	if (!dev) {
		FUNC4(skb);
		return -ENODEV;
	}

	skb->dev = dev;
	skb->sk  = sk;
	err = FUNC1(skb, 1); /* send with loopback */
	FUNC3(dev);

	if (err)
		return err;

	return CFSIZ + MHSIZ;
}