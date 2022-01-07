
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int in6; } ;




 int ipv6_masked_addr_cmp (int *,int *,int *) ;

__attribute__((used)) static inline bool
xt_addr_cmp(const union nf_inet_addr *a1, const union nf_inet_addr *m,
     const union nf_inet_addr *a2, unsigned short family)
{
 switch (family) {
 case 129:
  return ((a1->ip ^ a2->ip) & m->ip) == 0;
 case 128:
  return ipv6_masked_addr_cmp(&a1->in6, &m->in6, &a2->in6) == 0;
 }
 return 0;
}
