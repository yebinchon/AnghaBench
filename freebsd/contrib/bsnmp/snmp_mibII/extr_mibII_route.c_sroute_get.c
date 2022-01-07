
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sroute {int * index; } ;
struct asn_oid {int len; int * subs; } ;


 struct sroute* RB_FIND (int ,int *,struct sroute*) ;
 int sroutes ;

__attribute__((used)) static struct sroute *
sroute_get(const struct asn_oid *oid, u_int sub)
{
 struct sroute key;
 int i;

 if (oid->len - sub != 13)
  return (((void*)0));
 for (i = 0; i < 13; i++)
  key.index[i] = oid->subs[sub + i];
 return (RB_FIND(sroutes, &sroutes, &key));
}
