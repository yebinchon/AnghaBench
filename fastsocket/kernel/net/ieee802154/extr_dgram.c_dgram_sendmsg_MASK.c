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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  protocol; struct sock* sk; struct net_device* dev; } ;
struct net_device {unsigned int mtu; size_t name; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;
struct dgram_sock {int /*<<< orphan*/  src_addr; scalar_t__ bound; int /*<<< orphan*/  dst_addr; scalar_t__ want_ack; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_dsn ) (struct net_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IEEE802154 ; 
 int EINVAL ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IEEE802154 ; 
 int /*<<< orphan*/  IEEE802154_FC_TYPE_DATA ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  MAC_CB_FLAG_ACKREQ ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sk_buff*) ; 
 struct dgram_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 struct sk_buff* FUNC19 (struct sock*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 

__attribute__((used)) static int FUNC22(struct kiocb *iocb, struct sock *sk,
		struct msghdr *msg, size_t size)
{
	struct net_device *dev;
	unsigned mtu;
	struct sk_buff *skb;
	struct dgram_sock *ro = FUNC6(sk);
	int err;

	if (msg->msg_flags & MSG_OOB) {
		FUNC14("msg->msg_flags = 0x%x\n", msg->msg_flags);
		return -EOPNOTSUPP;
	}

	if (!ro->bound)
		dev = FUNC2(FUNC20(sk), ARPHRD_IEEE802154);
	else
		dev = FUNC8(FUNC20(sk), &ro->src_addr);

	if (!dev) {
		FUNC14("no dev\n");
		err = -ENXIO;
		goto out;
	}
	mtu = dev->mtu;
	FUNC14("name = %s, mtu = %u\n", dev->name, mtu);

	skb = FUNC19(sk, FUNC0(dev) + size,
			msg->msg_flags & MSG_DONTWAIT,
			&err);
	if (!skb)
		goto out_dev;

	FUNC16(skb, FUNC1(dev));

	FUNC18(skb);

	FUNC11(skb)->flags = IEEE802154_FC_TYPE_DATA;
	if (ro->want_ack)
		FUNC11(skb)->flags |= MAC_CB_FLAG_ACKREQ;

	FUNC11(skb)->seq = FUNC9(dev)->get_dsn(dev);
	err = FUNC3(skb, dev, ETH_P_IEEE802154, &ro->dst_addr,
			ro->bound ? &ro->src_addr : NULL, size);
	if (err < 0)
		goto out_skb;

	FUNC17(skb);

	err = FUNC12(FUNC15(skb, size), msg->msg_iov, size);
	if (err < 0)
		goto out_skb;

	if (size > mtu) {
		FUNC14("size = %Zu, mtu = %u\n", size, mtu);
		err = -EINVAL;
		goto out_skb;
	}

	skb->dev = dev;
	skb->sk  = sk;
	skb->protocol = FUNC7(ETH_P_IEEE802154);

	FUNC4(dev);

	err = FUNC5(skb);
	if (err > 0)
		err = FUNC13(err);

	return err ?: size;

out_skb:
	FUNC10(skb);
out_dev:
	FUNC4(dev);
out:
	return err;
}