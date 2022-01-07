
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decNumber ;
struct TYPE_5__ {int status; scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;
typedef int REAL_VALUE_TYPE ;


 int DEC_INIT_DECIMAL128 ;
 int DEC_Inexact ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decNumberMultiply (int *,int *,int *,TYPE_1__*) ;
 int decimal_from_decnumber (int *,int *,TYPE_1__*) ;
 int decimal_to_decnumber (int const*,int *) ;

__attribute__((used)) static bool
decimal_do_multiply (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *op0,
       const REAL_VALUE_TYPE *op1)
{
  decContext set;
  decNumber dn, dn2, dn3;

  decimal_to_decnumber (op0, &dn2);
  decimal_to_decnumber (op1, &dn3);

  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;

  decNumberMultiply (&dn, &dn2, &dn3, &set);
  decimal_from_decnumber (r, &dn, &set);


  return (set.status & DEC_Inexact);
}
