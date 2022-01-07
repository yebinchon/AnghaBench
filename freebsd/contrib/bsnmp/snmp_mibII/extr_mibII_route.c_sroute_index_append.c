
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sroute {int * index; } ;
struct asn_oid {int len; int * subs; } ;



__attribute__((used)) static void
sroute_index_append(struct asn_oid *oid, u_int sub, const struct sroute *s)
{
 int i;

 oid->len = sub + 13;
 for (i = 0; i < 13; i++)
  oid->subs[sub + i] = s->index[i];
}
