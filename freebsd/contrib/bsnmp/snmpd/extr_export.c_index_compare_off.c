
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct asn_oid {size_t len; scalar_t__* subs; } ;



int
index_compare_off(const struct asn_oid *oid, u_int sub,
    const struct asn_oid *idx, u_int off)
{
 u_int i;

 for (i = off; i < idx->len && i < oid->len - sub; i++) {
  if (oid->subs[sub + i] < idx->subs[i])
   return (-1);
  if (oid->subs[sub + i] > idx->subs[i])
   return (+1);
 }
 if (oid->len - sub < idx->len)
  return (-1);
 if (oid->len - sub > idx->len)
  return (+1);

 return (0);
}
