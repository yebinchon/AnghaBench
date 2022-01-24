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
struct vxlan_sock {struct vport* data; } ;
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ipv4_tunnel {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  TUNNEL_KEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ovs_key_ipv4_tunnel*,struct iphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vport*,struct sk_buff*,struct ovs_key_ipv4_tunnel*) ; 

__attribute__((used)) static void FUNC5(struct vxlan_sock *vs, struct sk_buff *skb, __be32 vx_vni)
{
	struct ovs_key_ipv4_tunnel tun_key;
	struct vport *vport = vs->data;
	struct iphdr *iph;
	__be64 key;

	/* Save outer tunnel values */
	iph = FUNC1(skb);
	key = FUNC0(FUNC2(vx_vni) >> 8);
	FUNC3(&tun_key, iph, key, TUNNEL_KEY);

	FUNC4(vport, skb, &tun_key);
}