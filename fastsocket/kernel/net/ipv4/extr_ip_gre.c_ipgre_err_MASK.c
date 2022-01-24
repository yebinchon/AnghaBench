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
typedef  int /*<<< orphan*/  u32 ;
struct tnl_ptk_info {scalar_t__ proto; int /*<<< orphan*/  key; int /*<<< orphan*/  flags; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_5__ {scalar_t__ daddr; scalar_t__ ttl; } ;
struct TYPE_6__ {TYPE_1__ iph; } ;
struct ip_tunnel {int err_count; scalar_t__ err_time; TYPE_2__ parms; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_7__ {int type; int code; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
#define  ICMP_DEST_UNREACH 132 
 int const ICMP_EXC_TTL ; 
#define  ICMP_PARAMETERPROB 131 
#define  ICMP_PORT_UNREACH 130 
#define  ICMP_SR_FAILED 129 
#define  ICMP_TIME_EXCEEDED 128 
 scalar_t__ IPTUNNEL_ERR_TIMEO ; 
 int PACKET_RCVD ; 
 int PACKET_REJECT ; 
 struct net* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  gre_tap_net_id ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC3 (struct ip_tunnel_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipgre_net_id ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 struct ip_tunnel_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, u32 info,
		     const struct tnl_ptk_info *tpi)
{

	/* All the routers (except for Linux) return only
	   8 bytes of packet payload. It means, that precise relaying of
	   ICMP in the real Internet is absolutely infeasible.

	   Moreover, Cisco "wise men" put GRE key to the third word
	   in GRE header. It makes impossible maintaining even soft
	   state for keyed GRE tunnels with enabled checksum. Tell
	   them "thank you".

	   Well, I wonder, rfc1812 was written by Cisco employee,
	   what the hell these idiots break standards established
	   by themselves???
	   */
	struct net *net = FUNC0(skb->dev);
	struct ip_tunnel_net *itn;
	const struct iphdr *iph;
	const int type = FUNC2(skb)->type;
	const int code = FUNC2(skb)->code;
	struct ip_tunnel *t;

	switch (type) {
	default:
	case ICMP_PARAMETERPROB:
		return PACKET_RCVD;

	case ICMP_DEST_UNREACH:
		switch (code) {
		case ICMP_SR_FAILED:
		case ICMP_PORT_UNREACH:
			/* Impossible event. */
			return PACKET_RCVD;
		default:
			/* All others are translated to HOST_UNREACH.
			   rfc2003 contains "deep thoughts" about NET_UNREACH,
			   I believe they are just ether pollution. --ANK
			 */
			break;
		}
		break;
	case ICMP_TIME_EXCEEDED:
		if (code != ICMP_EXC_TTL)
			return PACKET_RCVD;
		break;
	}

	if (tpi->proto == FUNC1(ETH_P_TEB))
		itn = FUNC5(net, gre_tap_net_id);
	else
		itn = FUNC5(net, ipgre_net_id);

	iph = (const struct iphdr *)skb->data;
	t = FUNC3(itn, skb->dev->ifindex, tpi->flags,
			     iph->daddr, iph->saddr, tpi->key);

	if (t == NULL)
		return PACKET_REJECT;

	if (t->parms.iph.daddr == 0 ||
	    FUNC4(t->parms.iph.daddr))
		return PACKET_RCVD;

	if (t->parms.iph.ttl == 0 && type == ICMP_TIME_EXCEEDED)
		return PACKET_RCVD;

	if (FUNC6(jiffies, t->err_time + IPTUNNEL_ERR_TIMEO))
		t->err_count++;
	else
		t->err_count = 1;
	t->err_time = jiffies;
	return PACKET_RCVD;
}