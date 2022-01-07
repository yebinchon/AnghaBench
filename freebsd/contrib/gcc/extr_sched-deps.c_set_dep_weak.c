
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dw_t ;
typedef int ds_t ;



 int BEGIN_CONTROL_BITS_OFFSET ;

 int BEGIN_DATA_BITS_OFFSET ;

 int BE_IN_CONTROL_BITS_OFFSET ;

 int BE_IN_DATA_BITS_OFFSET ;
 scalar_t__ MAX_DEP_WEAK ;
 scalar_t__ MIN_DEP_WEAK ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

ds_t
set_dep_weak (ds_t ds, ds_t type, dw_t dw)
{
  gcc_assert (MIN_DEP_WEAK <= dw && dw <= MAX_DEP_WEAK);

  ds &= ~type;
  switch (type)
    {
    case 130: ds |= ((ds_t) dw) << BEGIN_DATA_BITS_OFFSET; break;
    case 128: ds |= ((ds_t) dw) << BE_IN_DATA_BITS_OFFSET; break;
    case 131: ds |= ((ds_t) dw) << BEGIN_CONTROL_BITS_OFFSET; break;
    case 129: ds |= ((ds_t) dw) << BE_IN_CONTROL_BITS_OFFSET; break;
    default: gcc_unreachable ();
    }
  return ds;
}
