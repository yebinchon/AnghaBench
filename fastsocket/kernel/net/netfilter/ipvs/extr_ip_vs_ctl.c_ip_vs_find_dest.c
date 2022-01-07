
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_service {int dummy; } ;
struct ip_vs_dest {int refcnt; } ;
typedef int __u32 ;
typedef int __u16 ;
typedef int __be16 ;


 int IP_VS_CONN_F_FWD_MASK ;
 int IP_VS_CONN_F_MASQ ;
 int atomic_inc (int *) ;
 struct ip_vs_dest* ip_vs_lookup_dest (struct ip_vs_service*,union nf_inet_addr const*,int) ;
 struct ip_vs_service* ip_vs_service_get (int,int,int ,union nf_inet_addr const*,int) ;
 int ip_vs_service_put (struct ip_vs_service*) ;

struct ip_vs_dest *ip_vs_find_dest(int af, const union nf_inet_addr *daddr,
       __be16 dport,
       const union nf_inet_addr *vaddr,
       __be16 vport, __u16 protocol, __u32 fwmark,
       __u32 flags)
{
 struct ip_vs_dest *dest;
 struct ip_vs_service *svc;
 __be16 port = dport;

 svc = ip_vs_service_get(af, fwmark, protocol, vaddr, vport);
 if (!svc)
  return ((void*)0);
 if (fwmark && (flags & IP_VS_CONN_F_FWD_MASK) != IP_VS_CONN_F_MASQ)
  port = 0;
 dest = ip_vs_lookup_dest(svc, daddr, port);
 if (!dest)
  dest = ip_vs_lookup_dest(svc, daddr, port ^ dport);
 if (dest)
  atomic_inc(&dest->refcnt);
 ip_vs_service_put(svc);
 return dest;
}
