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
typedef  scalar_t__ u32 ;
struct xt_match_param {struct ebt_ip_info* matchinfo; } ;
struct tcpudphdr {scalar_t__ tos; int saddr; int daddr; scalar_t__ protocol; int ihl; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  frag_off; } ;
struct sk_buff {int dummy; } ;
struct iphdr {scalar_t__ tos; int saddr; int daddr; scalar_t__ protocol; int ihl; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  frag_off; } ;
struct ebt_ip_info {int bitmask; scalar_t__ tos; int smsk; int saddr; int dmsk; int daddr; scalar_t__ protocol; scalar_t__* dport; scalar_t__* sport; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  int /*<<< orphan*/  _iph ;

/* Variables and functions */
 int EBT_IP_DEST ; 
 int EBT_IP_DPORT ; 
 int EBT_IP_PROTO ; 
 int EBT_IP_SOURCE ; 
 int EBT_IP_SPORT ; 
 int EBT_IP_TOS ; 
 scalar_t__ FUNC0 (int,int) ; 
 int IP_OFFSET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tcpudphdr* FUNC2 (struct sk_buff const*,int,int,struct tcpudphdr*) ; 

__attribute__((used)) static bool
FUNC3(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct ebt_ip_info *info = par->matchinfo;
	const struct iphdr *ih;
	struct iphdr _iph;
	const struct tcpudphdr *pptr;
	struct tcpudphdr _ports;

	ih = FUNC2(skb, 0, sizeof(_iph), &_iph);
	if (ih == NULL)
		return false;
	if (info->bitmask & EBT_IP_TOS &&
	   FUNC0(info->tos != ih->tos, EBT_IP_TOS))
		return false;
	if (info->bitmask & EBT_IP_SOURCE &&
	   FUNC0((ih->saddr & info->smsk) !=
	   info->saddr, EBT_IP_SOURCE))
		return false;
	if ((info->bitmask & EBT_IP_DEST) &&
	   FUNC0((ih->daddr & info->dmsk) !=
	   info->daddr, EBT_IP_DEST))
		return false;
	if (info->bitmask & EBT_IP_PROTO) {
		if (FUNC0(info->protocol != ih->protocol, EBT_IP_PROTO))
			return false;
		if (!(info->bitmask & EBT_IP_DPORT) &&
		    !(info->bitmask & EBT_IP_SPORT))
			return true;
		if (FUNC1(ih->frag_off) & IP_OFFSET)
			return false;
		pptr = FUNC2(skb, ih->ihl*4,
					  sizeof(_ports), &_ports);
		if (pptr == NULL)
			return false;
		if (info->bitmask & EBT_IP_DPORT) {
			u32 dst = FUNC1(pptr->dst);
			if (FUNC0(dst < info->dport[0] ||
				  dst > info->dport[1],
				  EBT_IP_DPORT))
			return false;
		}
		if (info->bitmask & EBT_IP_SPORT) {
			u32 src = FUNC1(pptr->src);
			if (FUNC0(src < info->sport[0] ||
				  src > info->sport[1],
				  EBT_IP_SPORT))
			return false;
		}
	}
	return true;
}