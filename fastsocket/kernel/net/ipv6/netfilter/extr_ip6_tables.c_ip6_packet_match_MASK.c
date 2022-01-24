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
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip6t_ip6 {int invflags; int flags; int proto; int /*<<< orphan*/  outiface; int /*<<< orphan*/  outiface_mask; int /*<<< orphan*/  iniface; int /*<<< orphan*/  iniface_mask; int /*<<< orphan*/  dst; int /*<<< orphan*/  dmsk; int /*<<< orphan*/  src; int /*<<< orphan*/  smsk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int IP6T_F_PROTO ; 
 int IP6T_INV_DSTIP ; 
 int IP6T_INV_PROTO ; 
 int IP6T_INV_SRCIP ; 
 int IP6T_INV_VIA_IN ; 
 int IP6T_INV_VIA_OUT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff const*,unsigned int*,int,unsigned short*,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC6(const struct sk_buff *skb,
		 const char *indev,
		 const char *outdev,
		 const struct ip6t_ip6 *ip6info,
		 unsigned int *protoff,
		 int *fragoff, bool *hotdrop)
{
	unsigned long ret;
	const struct ipv6hdr *ipv6 = FUNC4(skb);

#define FWINV(bool, invflg) ((bool) ^ !!(ip6info->invflags & (invflg)))

	if (FWINV(FUNC5(&ipv6->saddr, &ip6info->smsk,
				       &ip6info->src), IP6T_INV_SRCIP)
	    || FWINV(FUNC5(&ipv6->daddr, &ip6info->dmsk,
					  &ip6info->dst), IP6T_INV_DSTIP)) {
		FUNC1("Source or dest mismatch.\n");
/*
		dprintf("SRC: %u. Mask: %u. Target: %u.%s\n", ip->saddr,
			ipinfo->smsk.s_addr, ipinfo->src.s_addr,
			ipinfo->invflags & IP6T_INV_SRCIP ? " (INV)" : "");
		dprintf("DST: %u. Mask: %u. Target: %u.%s\n", ip->daddr,
			ipinfo->dmsk.s_addr, ipinfo->dst.s_addr,
			ipinfo->invflags & IP6T_INV_DSTIP ? " (INV)" : "");*/
		return false;
	}

	ret = FUNC2(indev, ip6info->iniface, ip6info->iniface_mask);

	if (FWINV(ret != 0, IP6T_INV_VIA_IN)) {
		FUNC1("VIA in mismatch (%s vs %s).%s\n",
			indev, ip6info->iniface,
			ip6info->invflags&IP6T_INV_VIA_IN ?" (INV)":"");
		return false;
	}

	ret = FUNC2(outdev, ip6info->outiface, ip6info->outiface_mask);

	if (FWINV(ret != 0, IP6T_INV_VIA_OUT)) {
		FUNC1("VIA out mismatch (%s vs %s).%s\n",
			outdev, ip6info->outiface,
			ip6info->invflags&IP6T_INV_VIA_OUT ?" (INV)":"");
		return false;
	}

/* ... might want to do something with class and flowlabel here ... */

	/* look for the desired protocol header */
	if((ip6info->flags & IP6T_F_PROTO)) {
		int protohdr;
		unsigned short _frag_off;

		protohdr = FUNC3(skb, protoff, -1, &_frag_off, NULL);
		if (protohdr < 0) {
			if (_frag_off == 0)
				*hotdrop = true;
			return false;
		}
		*fragoff = _frag_off;

		FUNC1("Packet protocol %hi ?= %s%hi.\n",
				protohdr,
				ip6info->invflags & IP6T_INV_PROTO ? "!":"",
				ip6info->proto);

		if (ip6info->proto == protohdr) {
			if(ip6info->invflags & IP6T_INV_PROTO) {
				return false;
			}
			return true;
		}

		/* We need match for the '-p all', too! */
		if ((ip6info->proto != 0) &&
			!(ip6info->invflags & IP6T_INV_PROTO))
			return false;
	}
	return true;
}