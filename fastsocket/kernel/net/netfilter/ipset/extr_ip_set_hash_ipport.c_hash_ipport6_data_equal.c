
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in6; } ;
struct hash_ipport6_elem {scalar_t__ port; scalar_t__ proto; TYPE_1__ ip; } ;


 scalar_t__ ipv6_addr_cmp (int *,int *) ;

__attribute__((used)) static inline bool
hash_ipport6_data_equal(const struct hash_ipport6_elem *ip1,
   const struct hash_ipport6_elem *ip2)
{
 return ipv6_addr_cmp(&ip1->ip.in6, &ip2->ip.in6) == 0 &&
        ip1->port == ip2->port &&
        ip1->proto == ip2->proto;
}
