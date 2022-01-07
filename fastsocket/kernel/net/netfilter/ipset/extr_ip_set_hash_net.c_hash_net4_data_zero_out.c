
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_net4_elem {scalar_t__ cidr; } ;



__attribute__((used)) static inline void
hash_net4_data_zero_out(struct hash_net4_elem *elem)
{
 elem->cidr = 0;
}
