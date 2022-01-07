
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int decimal128 ;
typedef int decNumber ;
struct TYPE_9__ {int round; scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;
struct TYPE_10__ {scalar_t__ sig; } ;
typedef TYPE_2__ REAL_VALUE_TYPE ;


 int DEC_INIT_DECIMAL128 ;
 int DEC_ROUND_DOWN ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decNumberToIntegralValue (int *,int *,TYPE_1__*) ;
 int decimal128ToNumber (int *,int *) ;
 int decimal_from_decnumber (TYPE_2__*,int *,TYPE_1__*) ;

void
decimal_do_fix_trunc (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a)
{
  decNumber dn, dn2;
  decContext set;

  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  set.round = DEC_ROUND_DOWN;
  decimal128ToNumber ((decimal128 *) a->sig, &dn2);

  decNumberToIntegralValue (&dn, &dn2, &set);
  decimal_from_decnumber (r, &dn, &set);
}
