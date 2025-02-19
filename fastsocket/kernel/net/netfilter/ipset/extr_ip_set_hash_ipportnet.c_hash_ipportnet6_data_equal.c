
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in6; } ;
struct TYPE_4__ {int in6; } ;
struct hash_ipportnet6_elem {scalar_t__ cidr; scalar_t__ port; scalar_t__ proto; TYPE_1__ ip2; TYPE_2__ ip; } ;


 scalar_t__ ipv6_addr_cmp (int *,int *) ;

__attribute__((used)) static inline bool
hash_ipportnet6_data_equal(const struct hash_ipportnet6_elem *ip1,
      const struct hash_ipportnet6_elem *ip2)
{
 return ipv6_addr_cmp(&ip1->ip.in6, &ip2->ip.in6) == 0 &&
        ipv6_addr_cmp(&ip1->ip2.in6, &ip2->ip2.in6) == 0 &&
        ip1->cidr == ip2->cidr &&
        ip1->port == ip2->port &&
        ip1->proto == ip2->proto;
}
