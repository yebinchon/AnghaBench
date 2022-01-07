
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ipportip6_elem {scalar_t__ proto; } ;



__attribute__((used)) static inline void
hash_ipportip6_data_zero_out(struct hash_ipportip6_elem *elem)
{
 elem->proto = 0;
}
