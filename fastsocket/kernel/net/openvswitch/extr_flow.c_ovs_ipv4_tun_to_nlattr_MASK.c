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
struct sk_buff {int dummy; } ;
struct ovs_key_ipv4_tunnel {int tun_flags; scalar_t__ ipv4_ttl; scalar_t__ ipv4_tos; scalar_t__ ipv4_dst; scalar_t__ ipv4_src; int /*<<< orphan*/  tun_id; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_TUNNEL ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_CSUM ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_ID ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV4_DST ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV4_SRC ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_TOS ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_TTL ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_DONT_FRAGMENT ; 
 int TUNNEL_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct sk_buff *skb,
			   const struct ovs_key_ipv4_tunnel *tun_key)
{
	struct nlattr *nla;

	nla = FUNC1(skb, OVS_KEY_ATTR_TUNNEL);
	if (!nla)
		return -EMSGSIZE;

	if (tun_key->tun_flags & TUNNEL_KEY &&
	    FUNC3(skb, OVS_TUNNEL_KEY_ATTR_ID, tun_key->tun_id))
		return -EMSGSIZE;
	if (tun_key->ipv4_src &&
	    FUNC2(skb, OVS_TUNNEL_KEY_ATTR_IPV4_SRC, tun_key->ipv4_src))
		return -EMSGSIZE;
	if (FUNC2(skb, OVS_TUNNEL_KEY_ATTR_IPV4_DST, tun_key->ipv4_dst))
		return -EMSGSIZE;
	if (tun_key->ipv4_tos &&
	    FUNC5(skb, OVS_TUNNEL_KEY_ATTR_TOS, tun_key->ipv4_tos))
		return -EMSGSIZE;
	if (FUNC5(skb, OVS_TUNNEL_KEY_ATTR_TTL, tun_key->ipv4_ttl))
		return -EMSGSIZE;
	if ((tun_key->tun_flags & TUNNEL_DONT_FRAGMENT) &&
		FUNC4(skb, OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT))
		return -EMSGSIZE;
	if ((tun_key->tun_flags & TUNNEL_CSUM) &&
		FUNC4(skb, OVS_TUNNEL_KEY_ATTR_CSUM))
		return -EMSGSIZE;

	FUNC0(skb, nla);
	return 0;
}