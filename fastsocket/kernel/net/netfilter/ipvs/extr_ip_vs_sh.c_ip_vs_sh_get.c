
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_sh_bucket {struct ip_vs_dest* dest; } ;
struct ip_vs_dest {int dummy; } ;


 size_t ip_vs_sh_hashkey (int,union nf_inet_addr const*) ;

__attribute__((used)) static inline struct ip_vs_dest *
ip_vs_sh_get(int af, struct ip_vs_sh_bucket *tbl,
      const union nf_inet_addr *addr)
{
 return (tbl[ip_vs_sh_hashkey(af, addr)]).dest;
}
