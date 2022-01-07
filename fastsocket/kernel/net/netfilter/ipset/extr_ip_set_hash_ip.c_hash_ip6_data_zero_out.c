
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in6; } ;
struct hash_ip6_elem {TYPE_1__ ip; } ;


 int ipv6_addr_set (int *,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
hash_ip6_data_zero_out(struct hash_ip6_elem *elem)
{
 ipv6_addr_set(&elem->ip.in6, 0, 0, 0, 0);
}
