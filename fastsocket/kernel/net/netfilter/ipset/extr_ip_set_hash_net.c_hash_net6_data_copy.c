
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in6; } ;
struct hash_net6_elem {int cidr; TYPE_1__ ip; } ;


 int ipv6_addr_copy (int *,int *) ;

__attribute__((used)) static inline void
hash_net6_data_copy(struct hash_net6_elem *dst,
      const struct hash_net6_elem *src)
{
 ipv6_addr_copy(&dst->ip.in6, &src->ip.in6);
 dst->cidr = src->cidr;
}
