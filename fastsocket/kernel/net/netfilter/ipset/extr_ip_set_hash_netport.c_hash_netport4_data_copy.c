
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netport4_elem {int cidr; int proto; int port; int ip; } ;



__attribute__((used)) static inline void
hash_netport4_data_copy(struct hash_netport4_elem *dst,
   const struct hash_netport4_elem *src)
{
 dst->ip = src->ip;
 dst->port = src->port;
 dst->proto = src->proto;
 dst->cidr = src->cidr;
}
