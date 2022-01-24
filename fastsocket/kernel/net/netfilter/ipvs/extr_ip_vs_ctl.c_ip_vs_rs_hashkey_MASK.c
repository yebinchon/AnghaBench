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
union nf_inet_addr {int ip; int* ip6; } ;
typedef  int __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int AF_INET6 ; 
 unsigned int IP_VS_RTAB_BITS ; 
 unsigned int IP_VS_RTAB_MASK ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned FUNC2(int af,
					    const union nf_inet_addr *addr,
					    __be16 port)
{
	register unsigned porth = FUNC1(port);
	__be32 addr_fold = addr->ip;

#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6)
		addr_fold = addr->ip6[0]^addr->ip6[1]^
			    addr->ip6[2]^addr->ip6[3];
#endif

	return (FUNC0(addr_fold)^(porth>>IP_VS_RTAB_BITS)^porth)
		& IP_VS_RTAB_MASK;
}