#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_ipx {scalar_t__ sipx_zero; int /*<<< orphan*/  sipx_type; scalar_t__ sipx_network; int /*<<< orphan*/  sipx_node; scalar_t__ sipx_port; int /*<<< orphan*/  sipx_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__ tv64; } ;
struct sock {TYPE_2__ sk_stamp; } ;
struct sk_buff {TYPE_2__ tstamp; } ;
struct msghdr {int msg_namelen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  node; scalar_t__ sock; } ;
struct ipxhdr {int /*<<< orphan*/  ipx_type; TYPE_3__ ipx_source; int /*<<< orphan*/  ipx_pktsize; } ;
struct ipx_sock {TYPE_1__* intrfc; int /*<<< orphan*/  port; } ;
struct TYPE_8__ {scalar_t__ ipx_source_net; } ;
struct TYPE_5__ {int /*<<< orphan*/  if_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IPX ; 
 int ENETDOWN ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int FUNC1 (struct socket*,struct sockaddr*,int) ; 
 struct ipxhdr* FUNC2 (struct sk_buff*) ; 
 struct ipx_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sock*,int,int,int*) ; 
 scalar_t__ FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct kiocb *iocb, struct socket *sock,
		struct msghdr *msg, size_t size, int flags)
{
	struct sock *sk = sock->sk;
	struct ipx_sock *ipxs = FUNC3(sk);
	struct sockaddr_ipx *sipx = (struct sockaddr_ipx *)msg->msg_name;
	struct ipxhdr *ipx = NULL;
	struct sk_buff *skb;
	int copied, rc;

	msg->msg_namelen = 0;

	/* put the autobinding in */
	if (!ipxs->port) {
		struct sockaddr_ipx uaddr;

		uaddr.sipx_port		= 0;
		uaddr.sipx_network 	= 0;

#ifdef CONFIG_IPX_INTERN
		rc = -ENETDOWN;
		if (!ipxs->intrfc)
			goto out; /* Someone zonked the iface */
		memcpy(uaddr.sipx_node, ipxs->intrfc->if_node, IPX_NODE_LEN);
#endif	/* CONFIG_IPX_INTERN */

		rc = FUNC1(sock, (struct sockaddr *)&uaddr,
			      sizeof(struct sockaddr_ipx));
		if (rc)
			goto out;
	}

	rc = -ENOTCONN;
	if (FUNC9(sk, SOCK_ZAPPED))
		goto out;

	skb = FUNC8(sk, flags & ~MSG_DONTWAIT,
				flags & MSG_DONTWAIT, &rc);
	if (!skb)
		goto out;

	ipx 	= FUNC2(skb);
	copied 	= FUNC5(ipx->ipx_pktsize) - sizeof(struct ipxhdr);
	if (copied > size) {
		copied = size;
		msg->msg_flags |= MSG_TRUNC;
	}

	rc = FUNC6(skb, sizeof(struct ipxhdr), msg->msg_iov,
				     copied);
	if (rc)
		goto out_free;
	if (skb->tstamp.tv64)
		sk->sk_stamp = skb->tstamp;

	if (sipx) {
		sipx->sipx_family	= AF_IPX;
		sipx->sipx_port		= ipx->ipx_source.sock;
		FUNC4(sipx->sipx_node, ipx->ipx_source.node, IPX_NODE_LEN);
		sipx->sipx_network	= FUNC0(skb)->ipx_source_net;
		sipx->sipx_type 	= ipx->ipx_type;
		sipx->sipx_zero		= 0;
		msg->msg_namelen	= sizeof(*sipx);
	}
	rc = copied;

out_free:
	FUNC7(sk, skb);
out:
	return rc;
}