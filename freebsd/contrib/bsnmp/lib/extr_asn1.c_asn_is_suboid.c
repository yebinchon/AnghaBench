
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct asn_oid {size_t len; scalar_t__* subs; } ;



int
asn_is_suboid(const struct asn_oid *o1, const struct asn_oid *o2)
{
 u_long i;

 for (i = 0; i < o1->len; i++)
  if (i >= o2->len || o1->subs[i] != o2->subs[i])
   return (0);
 return (1);
}
