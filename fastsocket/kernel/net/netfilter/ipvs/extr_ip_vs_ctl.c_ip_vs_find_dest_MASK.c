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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_service {int dummy; } ;
struct ip_vs_dest {int /*<<< orphan*/  refcnt; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int __be16 ;

/* Variables and functions */
 int IP_VS_CONN_F_FWD_MASK ; 
 int IP_VS_CONN_F_MASQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ip_vs_dest* FUNC1 (struct ip_vs_service*,union nf_inet_addr const*,int) ; 
 struct ip_vs_service* FUNC2 (int,int,int /*<<< orphan*/ ,union nf_inet_addr const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_service*) ; 

struct ip_vs_dest *FUNC4(int af, const union nf_inet_addr *daddr,
				   __be16 dport,
				   const union nf_inet_addr *vaddr,
				   __be16 vport, __u16 protocol, __u32 fwmark,
				   __u32 flags)
{
	struct ip_vs_dest *dest;
	struct ip_vs_service *svc;
	__be16 port = dport;

	svc = FUNC2(af, fwmark, protocol, vaddr, vport);
	if (!svc)
		return NULL;
	if (fwmark && (flags & IP_VS_CONN_F_FWD_MASK) != IP_VS_CONN_F_MASQ)
		port = 0;
	dest = FUNC1(svc, daddr, port);
	if (!dest)
		dest = FUNC1(svc, daddr, port ^ dport);
	if (dest)
		FUNC0(&dest->refcnt);
	FUNC3(svc);
	return dest;
}