
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_net4_elem {scalar_t__ ip; scalar_t__ cidr; } ;



__attribute__((used)) static inline bool
hash_net4_data_equal(const struct hash_net4_elem *ip1,
      const struct hash_net4_elem *ip2)
{
 return ip1->ip == ip2->ip && ip1->cidr == ip2->cidr;
}
