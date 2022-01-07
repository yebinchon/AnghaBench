
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in6; } ;
struct hash_ip6_elem {TYPE_1__ ip; } ;


 int ipv6_addr_any (int *) ;

__attribute__((used)) static inline bool
hash_ip6_data_isnull(const struct hash_ip6_elem *elem)
{
 return ipv6_addr_any(&elem->ip.in6);
}
