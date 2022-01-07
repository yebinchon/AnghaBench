
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int* ip6; } ;
typedef int __be32 ;


 int AF_INET6 ;
 unsigned long IP_VS_LBLC_TAB_MASK ;
 unsigned long ntohl (int) ;

__attribute__((used)) static inline unsigned
ip_vs_lblc_hashkey(int af, const union nf_inet_addr *addr)
{
 __be32 addr_fold = addr->ip;






 return (ntohl(addr_fold)*2654435761UL) & IP_VS_LBLC_TAB_MASK;
}
