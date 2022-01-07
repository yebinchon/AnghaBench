
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ipport4_elem {int proto; int port; int ip; } ;



__attribute__((used)) static inline void
hash_ipport4_data_copy(struct hash_ipport4_elem *dst,
         const struct hash_ipport4_elem *src)
{
 dst->ip = src->ip;
 dst->port = src->port;
 dst->proto = src->proto;
}
