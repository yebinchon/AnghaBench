#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tnl_ptk_info {int flags; int /*<<< orphan*/  seq; int /*<<< orphan*/  key; int /*<<< orphan*/  proto; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int o_flags; int /*<<< orphan*/  o_key; } ;
struct ip_tunnel {int /*<<< orphan*/  hlen; int /*<<< orphan*/  o_seqno; TYPE_1__ parms; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int TUNNEL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct tnl_ptk_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,struct iphdr const*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, struct net_device *dev,
		       const struct iphdr *tnl_params,
		       __be16 proto)
{
	struct ip_tunnel *tunnel = FUNC3(dev);
	struct tnl_ptk_info tpi;

	tpi.flags = tunnel->parms.o_flags;
	tpi.proto = proto;
	tpi.key = tunnel->parms.o_key;
	if (tunnel->parms.o_flags & TUNNEL_SEQ)
		tunnel->o_seqno++;
	tpi.seq = FUNC1(tunnel->o_seqno);

	/* Push GRE header. */
	FUNC0(skb, &tpi, tunnel->hlen);

	FUNC2(skb, dev, tnl_params, tnl_params->protocol);
}