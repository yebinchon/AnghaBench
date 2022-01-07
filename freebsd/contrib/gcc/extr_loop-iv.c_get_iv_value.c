
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ step; scalar_t__ base; scalar_t__ extend; scalar_t__ delta; scalar_t__ mult; int extend_mode; int mode; int first_special; } ;
typedef scalar_t__ rtx ;


 int MULT ;
 int PLUS ;
 scalar_t__ UNKNOWN ;
 scalar_t__ const0_rtx ;
 int gcc_assert (int) ;
 scalar_t__ lowpart_subreg (int ,scalar_t__,int ) ;
 scalar_t__ simplify_gen_binary (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_unary (scalar_t__,int ,scalar_t__,int ) ;

rtx
get_iv_value (struct rtx_iv *iv, rtx iteration)
{
  rtx val;



  gcc_assert (!iv->first_special);

  if (iv->step != const0_rtx && iteration != const0_rtx)
    val = simplify_gen_binary (PLUS, iv->extend_mode, iv->base,
          simplify_gen_binary (MULT, iv->extend_mode,
          iv->step, iteration));
  else
    val = iv->base;

  if (iv->extend_mode == iv->mode)
    return val;

  val = lowpart_subreg (iv->mode, val, iv->extend_mode);

  if (iv->extend == UNKNOWN)
    return val;

  val = simplify_gen_unary (iv->extend, iv->extend_mode, val, iv->mode);
  val = simplify_gen_binary (PLUS, iv->extend_mode, iv->delta,
        simplify_gen_binary (MULT, iv->extend_mode,
        iv->mult, val));

  return val;
}
