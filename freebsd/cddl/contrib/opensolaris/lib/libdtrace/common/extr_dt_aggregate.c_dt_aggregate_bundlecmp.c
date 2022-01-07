
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_ahashent_t ;


 int assert (int) ;
 int dt_aggregate_keycmp (int **,int **) ;
 int dt_aggregate_valcmp (int **,int **) ;
 scalar_t__ dt_keysort ;

__attribute__((used)) static int
dt_aggregate_bundlecmp(const void *lhs, const void *rhs)
{
 dt_ahashent_t **lh = *((dt_ahashent_t ***)lhs);
 dt_ahashent_t **rh = *((dt_ahashent_t ***)rhs);
 int i, rval;

 if (dt_keysort) {







  for (i = 0; lh[i + 1] != ((void*)0); i++)
   continue;

  assert(i != 0);
  assert(rh[i + 1] == ((void*)0));

  if ((rval = dt_aggregate_keycmp(&lh[i], &rh[i])) != 0)
   return (rval);
 }

 for (i = 0; ; i++) {
  if (lh[i + 1] == ((void*)0)) {
   if (dt_keysort)
    return (0);

   assert(i != 0);
   assert(rh[i + 1] == ((void*)0));
   return (dt_aggregate_keycmp(&lh[i], &rh[i]));
  } else {
   if ((rval = dt_aggregate_valcmp(&lh[i], &rh[i])) != 0)
    return (rval);
  }
 }
}
