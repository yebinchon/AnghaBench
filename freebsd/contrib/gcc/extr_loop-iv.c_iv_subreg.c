
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ step; int first_special; int extend_mode; scalar_t__ base; int mode; scalar_t__ delta; void* mult; void* extend; } ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_BITSIZE (int) ;
 int MULT ;
 int PLUS ;
 void* UNKNOWN ;
 scalar_t__ const0_rtx ;
 void* const1_rtx ;
 scalar_t__ get_iv_value (struct rtx_iv*,scalar_t__) ;
 scalar_t__ lowpart_subreg (int,scalar_t__,int) ;
 void* simplify_gen_binary (int ,int,scalar_t__,void*) ;

__attribute__((used)) static bool
iv_subreg (struct rtx_iv *iv, enum machine_mode mode)
{

  if (iv->step == const0_rtx
      && !iv->first_special)
    {
      rtx val = get_iv_value (iv, const0_rtx);
      val = lowpart_subreg (mode, val, iv->extend_mode);

      iv->base = val;
      iv->extend = UNKNOWN;
      iv->mode = iv->extend_mode = mode;
      iv->delta = const0_rtx;
      iv->mult = const1_rtx;
      return 1;
    }

  if (iv->extend_mode == mode)
    return 1;

  if (GET_MODE_BITSIZE (mode) > GET_MODE_BITSIZE (iv->mode))
    return 0;

  iv->extend = UNKNOWN;
  iv->mode = mode;

  iv->base = simplify_gen_binary (PLUS, iv->extend_mode, iv->delta,
      simplify_gen_binary (MULT, iv->extend_mode,
             iv->base, iv->mult));
  iv->step = simplify_gen_binary (MULT, iv->extend_mode, iv->step, iv->mult);
  iv->mult = const1_rtx;
  iv->delta = const0_rtx;
  iv->first_special = 0;

  return 1;
}
