
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ step; int extend_mode; scalar_t__ extend; int mode; int mult; scalar_t__ delta; int base; int first_special; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ UNKNOWN ;
 scalar_t__ const0_rtx ;
 int const1_rtx ;
 int get_iv_value (struct rtx_iv*,scalar_t__) ;
 int simplify_gen_unary (int,int,int ,int) ;

__attribute__((used)) static bool
iv_extend (struct rtx_iv *iv, enum rtx_code extend, enum machine_mode mode)
{

  if (iv->step == const0_rtx
      && !iv->first_special)
    {
      rtx val = get_iv_value (iv, const0_rtx);
      val = simplify_gen_unary (extend, mode, val, iv->extend_mode);

      iv->base = val;
      iv->extend = UNKNOWN;
      iv->mode = iv->extend_mode = mode;
      iv->delta = const0_rtx;
      iv->mult = const1_rtx;
      return 1;
    }

  if (mode != iv->extend_mode)
    return 0;

  if (iv->extend != UNKNOWN
      && iv->extend != extend)
    return 0;

  iv->extend = extend;

  return 1;
}
