
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int cl; int sign; int decimal; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 scalar_t__ REAL_EXP (TYPE_1__*) ;
 scalar_t__ SIGNIFICAND_BITS ;
 int clear_significand_below (TYPE_1__*,scalar_t__) ;
 int decimal_do_fix_trunc (TYPE_1__*,TYPE_1__ const*) ;
 int gcc_unreachable () ;
 int get_zero (TYPE_1__*,int ) ;





__attribute__((used)) static void
do_fix_trunc (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a)
{
  *r = *a;

  switch (r->cl)
    {
    case 128:
    case 131:
    case 130:
      break;

    case 129:
      if (r->decimal)
 {
   decimal_do_fix_trunc (r, a);
   return;
 }
      if (REAL_EXP (r) <= 0)
 get_zero (r, r->sign);
      else if (REAL_EXP (r) < SIGNIFICAND_BITS)
 clear_significand_below (r, SIGNIFICAND_BITS - REAL_EXP (r));
      break;

    default:
      gcc_unreachable ();
    }
}
