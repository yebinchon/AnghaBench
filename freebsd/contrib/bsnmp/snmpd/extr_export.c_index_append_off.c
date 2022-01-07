
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct asn_oid {size_t len; int * subs; } ;



void
index_append_off(struct asn_oid *var, u_int sub, const struct asn_oid *idx,
    u_int off)
{
 u_int i;

 var->len = sub + idx->len;
 for (i = off; i < idx->len; i++)
  var->subs[sub + i] = idx->subs[i];
}
