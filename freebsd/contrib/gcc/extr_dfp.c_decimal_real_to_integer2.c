
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
typedef int HOST_WIDE_INT ;


 int DEC_INIT_DECIMAL128 ;
 int DEC_ROUND_DOWN ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decNumberRescale (int *,int *,int *,TYPE_1__*) ;
 int decNumberToIntegralValue (int *,int *,TYPE_1__*) ;
 int decNumberToString (int *,char*) ;
 int decNumberZero (int *) ;
 int decimal128ToNumber (int *,int *) ;
 int real_from_string (TYPE_2__*,char*) ;
 int real_to_integer2 (int *,int *,TYPE_2__*) ;

void
decimal_real_to_integer2 (HOST_WIDE_INT *plow, HOST_WIDE_INT *phigh,
     const REAL_VALUE_TYPE *r)
{
  decContext set;
  decNumber dn, dn2, dn3;
  REAL_VALUE_TYPE to;
  char string[256];

  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  set.round = DEC_ROUND_DOWN;
  decimal128ToNumber ((decimal128 *) r->sig, &dn);

  decNumberToIntegralValue (&dn2, &dn, &set);
  decNumberZero (&dn3);
  decNumberRescale (&dn, &dn2, &dn3, &set);



  decNumberToString (&dn, string);
  real_from_string (&to, string);
  real_to_integer2 (plow, phigh, &to);
}
