#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vxlan_port {TYPE_3__* vs; } ;
struct vport {int /*<<< orphan*/  dp; } ;
struct sk_buff {int local_df; int /*<<< orphan*/  mark; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl4_src; int /*<<< orphan*/  proto; int /*<<< orphan*/  mark; int /*<<< orphan*/  fl4_tos; int /*<<< orphan*/  fl4_dst; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_10__ {TYPE_2__* tun_key; } ;
struct TYPE_9__ {int /*<<< orphan*/  sport; } ;
struct TYPE_8__ {TYPE_1__* sock; } ;
struct TYPE_7__ {int tun_flags; int /*<<< orphan*/  tun_id; int /*<<< orphan*/  ipv4_ttl; int /*<<< orphan*/  ipv4_tos; int /*<<< orphan*/  ipv4_dst; int /*<<< orphan*/  ipv4_src; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_DF ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TUNNEL_DONT_FRAGMENT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net*,struct rtable**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC9 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,struct sk_buff*) ; 
 struct vxlan_port* FUNC13 (struct vport*) ; 
 int FUNC14 (struct net*,TYPE_3__*,struct rtable*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct vport *vport, struct sk_buff *skb)
{
	struct net *net = FUNC10(vport->dp);
	struct vxlan_port *vxlan_port = FUNC13(vport);
	__be16 dst_port = FUNC6(vxlan_port->vs->sock->sk)->sport;
	struct rtable *rt;
	struct flowi fl;
	__be16 src_port;
	int port_min;
	int port_max;
	__be16 df;
	int err;

	if (FUNC11(!FUNC0(skb)->tun_key)) {
		err = -EINVAL;
		goto error;
	}

	/* Route lookup */
	FUNC9(&fl, 0, sizeof(fl));
	fl.fl4_dst = FUNC0(skb)->tun_key->ipv4_dst;
	fl.fl4_src = FUNC0(skb)->tun_key->ipv4_src;
	fl.fl4_tos = FUNC1(FUNC0(skb)->tun_key->ipv4_tos);
	fl.mark = skb->mark;
	fl.proto = IPPROTO_UDP;

	err = FUNC7(net, &rt, &fl);
	if (err)
		goto error;

	df = FUNC0(skb)->tun_key->tun_flags & TUNNEL_DONT_FRAGMENT ?
		FUNC4(IP_DF) : 0;

	skb->local_df = 1;

	FUNC5(&port_min, &port_max);
	src_port = FUNC12(port_min, port_max, skb);

	err = FUNC14(net, vxlan_port->vs, rt, skb,
			     fl.fl4_src, FUNC0(skb)->tun_key->ipv4_dst,
			     FUNC0(skb)->tun_key->ipv4_tos,
			     FUNC0(skb)->tun_key->ipv4_ttl, df,
			     src_port, dst_port,
			     FUNC3(FUNC2(FUNC0(skb)->tun_key->tun_id) << 8));
	if (err < 0)
		FUNC8(rt);
error:
	return err;
}