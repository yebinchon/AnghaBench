
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in6; } ;
struct hash_net6_elem {scalar_t__ cidr; TYPE_1__ ip; } ;


 scalar_t__ ipv6_addr_cmp (int *,int *) ;

__attribute__((used)) static inline bool
hash_net6_data_equal(const struct hash_net6_elem *ip1,
       const struct hash_net6_elem *ip2)
{
 return ipv6_addr_cmp(&ip1->ip.in6, &ip2->ip.in6) == 0 &&
        ip1->cidr == ip2->cidr;
}
