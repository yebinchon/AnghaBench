
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dw_t ;
typedef int ds_t ;



 int BEGIN_CONTROL_BITS_OFFSET ;

 int BEGIN_DATA_BITS_OFFSET ;

 int BE_IN_CONTROL_BITS_OFFSET ;

 int BE_IN_DATA_BITS_OFFSET ;
 int MAX_DEP_WEAK ;
 int MIN_DEP_WEAK ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

dw_t
get_dep_weak (ds_t ds, ds_t type)
{
  ds = ds & type;
  switch (type)
    {
    case 130: ds >>= BEGIN_DATA_BITS_OFFSET; break;
    case 128: ds >>= BE_IN_DATA_BITS_OFFSET; break;
    case 131: ds >>= BEGIN_CONTROL_BITS_OFFSET; break;
    case 129: ds >>= BE_IN_CONTROL_BITS_OFFSET; break;
    default: gcc_unreachable ();
    }

  gcc_assert (MIN_DEP_WEAK <= ds && ds <= MAX_DEP_WEAK);
  return (dw_t) ds;
}
