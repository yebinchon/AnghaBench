
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cl; int sign; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int MAX_EXP ;
 int REAL_EXP (TYPE_1__ const*) ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int gcc_unreachable () ;
 int get_inf (TYPE_1__*,int ) ;
 int get_zero (TYPE_1__*,int ) ;





void
real_ldexp (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *op0, int exp)
{
  *r = *op0;
  switch (r->cl)
    {
    case 128:
    case 131:
    case 130:
      break;

    case 129:
      exp += REAL_EXP (op0);
      if (exp > MAX_EXP)
 get_inf (r, r->sign);
      else if (exp < -MAX_EXP)
 get_zero (r, r->sign);
      else
 SET_REAL_EXP (r, exp);
      break;

    default:
      gcc_unreachable ();
    }
}
