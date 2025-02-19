
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dw_t ;
typedef int ds_t ;


 int DEP_TYPES ;
 int FIRST_SPEC_TYPE ;
 int LAST_SPEC_TYPE ;
 int MAX_DEP_WEAK ;
 int MIN_DEP_WEAK ;
 int SPECULATIVE ;
 int SPEC_TYPE_SHIFT ;
 int gcc_assert (int) ;
 scalar_t__ get_dep_weak (int,int) ;
 int set_dep_weak (int,int,int ) ;

ds_t
ds_merge (ds_t ds1, ds_t ds2)
{
  ds_t ds, t;

  gcc_assert ((ds1 & SPECULATIVE) && (ds2 & SPECULATIVE));

  ds = (ds1 & DEP_TYPES) | (ds2 & DEP_TYPES);

  t = FIRST_SPEC_TYPE;
  do
    {
      if ((ds1 & t) && !(ds2 & t))
 ds |= ds1 & t;
      else if (!(ds1 & t) && (ds2 & t))
 ds |= ds2 & t;
      else if ((ds1 & t) && (ds2 & t))
 {
   ds_t dw;

   dw = ((ds_t) get_dep_weak (ds1, t)) * ((ds_t) get_dep_weak (ds2, t));
   dw /= MAX_DEP_WEAK;
   if (dw < MIN_DEP_WEAK)
     dw = MIN_DEP_WEAK;

   ds = set_dep_weak (ds, t, (dw_t) dw);
 }

      if (t == LAST_SPEC_TYPE)
 break;
      t <<= SPEC_TYPE_SHIFT;
    }
  while (1);

  return ds;
}
