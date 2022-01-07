
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_net4_elem {int cidr; int ip; } ;



__attribute__((used)) static inline void
hash_net4_data_copy(struct hash_net4_elem *dst,
      const struct hash_net4_elem *src)
{
 dst->ip = src->ip;
 dst->cidr = src->cidr;
}
