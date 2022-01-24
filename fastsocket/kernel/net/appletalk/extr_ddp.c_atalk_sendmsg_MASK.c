#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct atalk_addr {scalar_t__ s_node; scalar_t__ s_net; } ;
struct sockaddr_at {scalar_t__ sat_family; struct atalk_addr sat_addr; int /*<<< orphan*/  sat_port; } ;
struct sock {scalar_t__ sk_state; int sk_no_check; } ;
struct sk_buff {struct net_device* dev; struct sock* sk; } ;
struct net_device {int hard_header_len; int flags; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; } ;
struct msghdr {int msg_flags; int msg_namelen; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct ddpehdr {scalar_t__ deh_dnode; scalar_t__ deh_sum; int /*<<< orphan*/  deh_sport; int /*<<< orphan*/  deh_dport; int /*<<< orphan*/  deh_snode; scalar_t__ deh_snet; scalar_t__ deh_dnet; int /*<<< orphan*/  deh_len_hops; } ;
struct atalk_sock {scalar_t__ dest_node; int /*<<< orphan*/  src_port; int /*<<< orphan*/  src_node; scalar_t__ src_net; scalar_t__ dest_net; int /*<<< orphan*/  dest_port; } ;
struct atalk_route {int flags; struct atalk_addr gateway; struct net_device* dev; } ;
struct TYPE_3__ {int header_length; int /*<<< orphan*/  (* request ) (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AF_APPLETALK ; 
 scalar_t__ ATADDR_ANYNODE ; 
 scalar_t__ ATADDR_BCAST ; 
 size_t DDP_MAXSZ ; 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENETUNREACH ; 
 int ENOTCONN ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_LOOPBACK ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int RTF_GATEWAY ; 
 int /*<<< orphan*/  SOCK_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*,struct sock*,...) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*,struct atalk_addr*,int /*<<< orphan*/ *) ; 
 struct atalk_sock* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,size_t) ; 
 struct atalk_route* FUNC5 (struct atalk_addr*) ; 
 TYPE_1__* ddp_dl ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC13 (struct sock*,int,int,int*) ; 
 scalar_t__ FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
			 size_t len)
{
	struct sock *sk = sock->sk;
	struct atalk_sock *at = FUNC2(sk);
	struct sockaddr_at *usat = (struct sockaddr_at *)msg->msg_name;
	int flags = msg->msg_flags;
	int loopback = 0;
	struct sockaddr_at local_satalk, gsat;
	struct sk_buff *skb;
	struct net_device *dev;
	struct ddpehdr *ddp;
	int size;
	struct atalk_route *rt;
	int err;

	if (flags & ~(MSG_DONTWAIT|MSG_CMSG_COMPAT))
		return -EINVAL;

	if (len > DDP_MAXSZ)
		return -EMSGSIZE;

	if (usat) {
		if (FUNC14(sk, SOCK_ZAPPED))
			if (FUNC3(sk) < 0)
				return -EBUSY;

		if (msg->msg_namelen < sizeof(*usat) ||
		    usat->sat_family != AF_APPLETALK)
			return -EINVAL;

		/* netatalk didn't implement this check */
		if (usat->sat_addr.s_node == ATADDR_BCAST &&
		    !FUNC14(sk, SOCK_BROADCAST)) {
			return -EPERM;
		}
	} else {
		if (sk->sk_state != TCP_ESTABLISHED)
			return -ENOTCONN;
		usat = &local_satalk;
		usat->sat_family      = AF_APPLETALK;
		usat->sat_port	      = at->dest_port;
		usat->sat_addr.s_node = at->dest_node;
		usat->sat_addr.s_net  = at->dest_net;
	}

	/* Build a packet */
	FUNC0(sk, "SK %p: Got address.\n", sk);

	/* For headers */
	size = sizeof(struct ddpehdr) + len + ddp_dl->header_length;

	if (usat->sat_addr.s_net || usat->sat_addr.s_node == ATADDR_ANYNODE) {
		rt = FUNC5(&usat->sat_addr);
	} else {
		struct atalk_addr at_hint;

		at_hint.s_node = 0;
		at_hint.s_net  = at->src_net;

		rt = FUNC5(&at_hint);
	}
	if (!rt)
		return -ENETUNREACH;

	dev = rt->dev;

	FUNC0(sk, "SK %p: Size needed %d, device %s\n",
			sk, size, dev->name);

	size += dev->hard_header_len;
	skb = FUNC13(sk, size, (flags & MSG_DONTWAIT), &err);
	if (!skb)
		return err;

	skb->sk = sk;
	FUNC12(skb, ddp_dl->header_length);
	FUNC12(skb, dev->hard_header_len);
	skb->dev = dev;

	FUNC0(sk, "SK %p: Begin build.\n", sk);

	ddp = (struct ddpehdr *)FUNC11(skb, sizeof(struct ddpehdr));
	ddp->deh_len_hops  = FUNC6(len + sizeof(*ddp));
	ddp->deh_dnet  = usat->sat_addr.s_net;
	ddp->deh_snet  = at->src_net;
	ddp->deh_dnode = usat->sat_addr.s_node;
	ddp->deh_snode = at->src_node;
	ddp->deh_dport = usat->sat_port;
	ddp->deh_sport = at->src_port;

	FUNC0(sk, "SK %p: Copy user data (%Zd bytes).\n", sk, len);

	err = FUNC8(FUNC11(skb, len), msg->msg_iov, len);
	if (err) {
		FUNC7(skb);
		return -EFAULT;
	}

	if (sk->sk_no_check == 1)
		ddp->deh_sum = 0;
	else
		ddp->deh_sum = FUNC4(skb, len + sizeof(*ddp));

	/*
	 * Loopback broadcast packets to non gateway targets (ie routes
	 * to group we are in)
	 */
	if (ddp->deh_dnode == ATADDR_BCAST &&
	    !(rt->flags & RTF_GATEWAY) && !(dev->flags & IFF_LOOPBACK)) {
		struct sk_buff *skb2 = FUNC9(skb, GFP_KERNEL);

		if (skb2) {
			loopback = 1;
			FUNC0(sk, "SK %p: send out(copy).\n", sk);
			/*
			 * If it fails it is queued/sent above in the aarp queue
			 */
			FUNC1(dev, skb2, &usat->sat_addr, NULL);
		}
	}

	if (dev->flags & IFF_LOOPBACK || loopback) {
		FUNC0(sk, "SK %p: Loop back.\n", sk);
		/* loop back */
		FUNC10(skb);
		if (ddp->deh_dnode == ATADDR_BCAST) {
			struct atalk_addr at_lo;

			at_lo.s_node = 0;
			at_lo.s_net  = 0;

			rt = FUNC5(&at_lo);
			if (!rt) {
				FUNC7(skb);
				return -ENETUNREACH;
			}
			dev = rt->dev;
			skb->dev = dev;
		}
		ddp_dl->request(ddp_dl, skb, dev->dev_addr);
	} else {
		FUNC0(sk, "SK %p: send out.\n", sk);
		if (rt->flags & RTF_GATEWAY) {
		    gsat.sat_addr = rt->gateway;
		    usat = &gsat;
		}

		/*
		 * If it fails it is queued/sent above in the aarp queue
		 */
		FUNC1(dev, skb, &usat->sat_addr, NULL);
	}
	FUNC0(sk, "SK %p: Done write (%Zd).\n", sk, len);

	return len;
}