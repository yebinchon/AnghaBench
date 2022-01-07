
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int decimal128 ;
typedef int decNumber ;
struct TYPE_9__ {scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;
struct TYPE_10__ {scalar_t__ sig; int decimal; } ;
typedef TYPE_2__ REAL_VALUE_TYPE ;


 int DEC_INIT_DECIMAL128 ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decNumberCompare (int *,int *,int *,TYPE_1__*) ;
 scalar_t__ decNumberIsNaN (int *) ;
 scalar_t__ decNumberIsNegative (int *) ;
 scalar_t__ decNumberIsZero (int *) ;
 int decimal128ToNumber (int *,int *) ;
 int decimal_from_binary (TYPE_2__*,TYPE_2__ const*) ;

int
decimal_do_compare (const REAL_VALUE_TYPE *a, const REAL_VALUE_TYPE *b,
      int nan_result)
{
  decContext set;
  decNumber dn, dn2, dn3;
  REAL_VALUE_TYPE a1, b1;


  if (!a->decimal)
    {
      decimal_from_binary (&a1, a);
      a = &a1;
    }
  if (!b->decimal)
    {
      decimal_from_binary (&b1, b);
      b = &b1;
    }


  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  decimal128ToNumber ((decimal128 *) a->sig, &dn2);
  decimal128ToNumber ((decimal128 *) b->sig, &dn3);


  decNumberCompare (&dn, &dn2, &dn3, &set);


  if (decNumberIsNaN (&dn))
    return nan_result;
  else if (decNumberIsZero (&dn))
    return 0;
  else if (decNumberIsNegative (&dn))
    return -1;
  else
    return 1;
}
