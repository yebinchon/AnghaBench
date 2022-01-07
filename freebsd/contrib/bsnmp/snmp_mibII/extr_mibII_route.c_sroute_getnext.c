
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sroute {scalar_t__* index; } ;
struct asn_oid {int len; scalar_t__* subs; } ;


 scalar_t__ ASN_MAXID ;
 struct sroute* RB_LEFT (struct sroute*,int ) ;
 struct sroute* RB_MIN (int ,int *) ;
 struct sroute* RB_RIGHT (struct sroute*,int ) ;
 struct sroute* RB_ROOT (int *) ;
 int link ;
 int sroute_compare (struct sroute*,struct sroute*) ;
 int sroutes ;

__attribute__((used)) static struct sroute *
sroute_getnext(struct asn_oid *oid, u_int sub)
{
 u_int i;
 int comp;
 struct sroute key;
 struct sroute *best;
 struct sroute *s;





 if (oid->len == sub)
  return (RB_MIN(sroutes, &sroutes));





 if (oid->len < sub + 13) {
  for (i = sub; i < oid->len; i++)
   if (oid->subs[i] != 0)
    break;
  if (i == oid->len)
   return (RB_MIN(sroutes, &sroutes));






  for (i = oid->len; i < sub + 13; i++)
   oid->subs[i] = 0;

  for (i = sub + 13 - 1; i >= sub; i--) {
   if (oid->subs[i] != 0) {
    oid->subs[i]--;
    break;
   }
   oid->subs[i] = ASN_MAXID;
  }
  oid->len = sub + 13;
 }


 for (i = sub; i < sub + 13; i++)
  key.index[i - sub] = oid->subs[i];


 best = ((void*)0);
 s = RB_ROOT(&sroutes);

 while (s != ((void*)0)) {
  comp = sroute_compare(&key, s);
  if (comp >= 0) {


   s = RB_RIGHT(s, link);
   continue;
  }



  if (best == ((void*)0) || sroute_compare(s, best) < 0)

   best = s;

  s = RB_LEFT(s, link);
 }
 return (best);
}
