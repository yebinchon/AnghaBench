#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ u32 ;
struct xt_match_param {struct ebt_ip6_info* matchinfo; } ;
struct TYPE_15__ {int* u6_addr32; } ;
struct TYPE_16__ {TYPE_6__ in6_u; } ;
struct TYPE_10__ {int* u6_addr32; } ;
struct TYPE_11__ {TYPE_1__ in6_u; } ;
struct tcpudphdr {scalar_t__ nexthdr; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; TYPE_7__ daddr; TYPE_2__ saddr; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; TYPE_7__ daddr; TYPE_2__ saddr; } ;
struct TYPE_14__ {int* u6_addr32; } ;
struct in6_addr {TYPE_5__ in6_u; } ;
struct TYPE_17__ {int* u6_addr32; } ;
struct TYPE_18__ {TYPE_8__ in6_u; } ;
struct TYPE_12__ {int* u6_addr32; } ;
struct TYPE_13__ {TYPE_3__ in6_u; } ;
struct ebt_ip6_info {int bitmask; scalar_t__ tclass; scalar_t__ protocol; scalar_t__* dport; scalar_t__* sport; int /*<<< orphan*/  daddr; TYPE_9__ dmsk; int /*<<< orphan*/  saddr; TYPE_4__ smsk; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  int /*<<< orphan*/  _ip6h ;

/* Variables and functions */
 int EBT_IP6_DEST ; 
 int EBT_IP6_DPORT ; 
 int EBT_IP6_PROTO ; 
 int EBT_IP6_SOURCE ; 
 int EBT_IP6_SPORT ; 
 int EBT_IP6_TCLASS ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct tcpudphdr const*) ; 
 int FUNC3 (struct sk_buff const*,int,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct tcpudphdr* FUNC5 (struct sk_buff const*,int,int,struct tcpudphdr*) ; 

__attribute__((used)) static bool
FUNC6(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct ebt_ip6_info *info = par->matchinfo;
	const struct ipv6hdr *ih6;
	struct ipv6hdr _ip6h;
	const struct tcpudphdr *pptr;
	struct tcpudphdr _ports;
	struct in6_addr tmp_addr;
	int i;

	ih6 = FUNC5(skb, 0, sizeof(_ip6h), &_ip6h);
	if (ih6 == NULL)
		return false;
	if (info->bitmask & EBT_IP6_TCLASS &&
	   FUNC0(info->tclass != FUNC2(ih6), EBT_IP6_TCLASS))
		return false;
	for (i = 0; i < 4; i++)
		tmp_addr.in6_u.u6_addr32[i] = ih6->saddr.in6_u.u6_addr32[i] &
			info->smsk.in6_u.u6_addr32[i];
	if (info->bitmask & EBT_IP6_SOURCE &&
		FUNC0((FUNC1(&tmp_addr, &info->saddr) != 0),
			EBT_IP6_SOURCE))
		return false;
	for (i = 0; i < 4; i++)
		tmp_addr.in6_u.u6_addr32[i] = ih6->daddr.in6_u.u6_addr32[i] &
			info->dmsk.in6_u.u6_addr32[i];
	if (info->bitmask & EBT_IP6_DEST &&
	   FUNC0((FUNC1(&tmp_addr, &info->daddr) != 0), EBT_IP6_DEST))
		return false;
	if (info->bitmask & EBT_IP6_PROTO) {
		uint8_t nexthdr = ih6->nexthdr;
		int offset_ph;

		offset_ph = FUNC3(skb, sizeof(_ip6h), &nexthdr);
		if (offset_ph == -1)
			return false;
		if (FUNC0(info->protocol != nexthdr, EBT_IP6_PROTO))
			return false;
		if (!(info->bitmask & EBT_IP6_DPORT) &&
		    !(info->bitmask & EBT_IP6_SPORT))
			return true;
		pptr = FUNC5(skb, offset_ph, sizeof(_ports),
					  &_ports);
		if (pptr == NULL)
			return false;
		if (info->bitmask & EBT_IP6_DPORT) {
			u32 dst = FUNC4(pptr->dst);
			if (FUNC0(dst < info->dport[0] ||
				  dst > info->dport[1], EBT_IP6_DPORT))
				return false;
		}
		if (info->bitmask & EBT_IP6_SPORT) {
			u32 src = FUNC4(pptr->src);
			if (FUNC0(src < info->sport[0] ||
				  src > info->sport[1], EBT_IP6_SPORT))
			return false;
		}
		return true;
	}
	return true;
}