
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ipport4_elem {scalar_t__ proto; } ;



__attribute__((used)) static inline bool
hash_ipport4_data_isnull(const struct hash_ipport4_elem *elem)
{
 return elem->proto == 0;
}
