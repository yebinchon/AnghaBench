
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int mode; int extend_mode; int extend; int first_special; void* base; int delta; int mult; void* step; } ;
struct df_ref {int dummy; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONSTANT_P (int ) ;
 int MINUS ;
 void* NULL_RTX ;
 int PLUS ;
 int REG_P (int ) ;
 int VOIDmode ;
 scalar_t__ analyzed_for_bivness_p (int ,struct rtx_iv*) ;
 int const1_rtx ;
 scalar_t__ dump_file ;
 int dump_iv_info (scalar_t__,struct rtx_iv*) ;
 int fprintf (scalar_t__,char*) ;
 int get_biv_step (struct df_ref*,int ,int *,int*,int*,int*,int *) ;
 int iv_constant (struct rtx_iv*,int ,int ) ;
 int latch_dominating_def (int ,struct df_ref**) ;
 int print_rtl (scalar_t__,int ) ;
 int record_biv (int ,struct rtx_iv*) ;
 void* simplify_gen_binary (int ,int,int ,int ) ;

__attribute__((used)) static bool
iv_analyze_biv (rtx def, struct rtx_iv *iv)
{
  rtx inner_step, outer_step;
  enum machine_mode inner_mode, outer_mode;
  enum rtx_code extend;
  struct df_ref *last_def;

  if (dump_file)
    {
      fprintf (dump_file, "Analyzing ");
      print_rtl (dump_file, def);
      fprintf (dump_file, " for bivness.\n");
    }

  if (!REG_P (def))
    {
      if (!CONSTANT_P (def))
 return 0;

      return iv_constant (iv, def, VOIDmode);
    }

  if (!latch_dominating_def (def, &last_def))
    {
      if (dump_file)
 fprintf (dump_file, "  not simple.\n");
      return 0;
    }

  if (!last_def)
    return iv_constant (iv, def, VOIDmode);

  if (analyzed_for_bivness_p (def, iv))
    {
      if (dump_file)
 fprintf (dump_file, "  already analysed.\n");
      return iv->base != NULL_RTX;
    }

  if (!get_biv_step (last_def, def, &inner_step, &inner_mode, &extend,
       &outer_mode, &outer_step))
    {
      iv->base = NULL_RTX;
      goto end;
    }







  iv->base = simplify_gen_binary (MINUS, outer_mode, def, outer_step);
  iv->step = simplify_gen_binary (PLUS, outer_mode, inner_step, outer_step);
  iv->mode = inner_mode;
  iv->extend_mode = outer_mode;
  iv->extend = extend;
  iv->mult = const1_rtx;
  iv->delta = outer_step;
  iv->first_special = inner_mode != outer_mode;

 end:
  if (dump_file)
    {
      fprintf (dump_file, "  ");
      dump_iv_info (dump_file, iv);
      fprintf (dump_file, "\n");
    }

  record_biv (def, iv);
  return iv->base != NULL_RTX;
}
