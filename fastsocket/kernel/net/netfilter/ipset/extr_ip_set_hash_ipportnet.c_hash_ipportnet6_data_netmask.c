
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hash_ipportnet6_elem {int cidr; int ip2; } ;


 int ip6_netmask (int *,int ) ;

__attribute__((used)) static inline void
hash_ipportnet6_data_netmask(struct hash_ipportnet6_elem *elem, u8 cidr)
{
 ip6_netmask(&elem->ip2, cidr);
 elem->cidr = cidr;
}
