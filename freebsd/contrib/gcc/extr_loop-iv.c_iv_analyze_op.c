
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int dummy; } ;
struct df_ref {int dummy; } ;
typedef int rtx ;
typedef enum iv_grd_result { ____Placeholder_iv_grd_result } iv_grd_result ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GRD_INVALID ;
 int GRD_INVARIANT ;
 int GRD_MAYBE_BIV ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int VOIDmode ;
 scalar_t__ dump_file ;
 int dump_iv_info (scalar_t__,struct rtx_iv*) ;
 int fprintf (scalar_t__,char*) ;
 int iv_analyze_biv (int ,struct rtx_iv*) ;
 int iv_analyze_def (struct df_ref*,struct rtx_iv*) ;
 int iv_constant (struct rtx_iv*,int ,int ) ;
 int iv_get_reaching_def (int ,int ,struct df_ref**) ;
 int iv_subreg (struct rtx_iv*,int ) ;
 int print_rtl (scalar_t__,int ) ;
 int print_rtl_single (scalar_t__,int ) ;
 int subreg_lowpart_p (int ) ;

__attribute__((used)) static bool
iv_analyze_op (rtx insn, rtx op, struct rtx_iv *iv)
{
  struct df_ref *def = ((void*)0);
  enum iv_grd_result res;

  if (dump_file)
    {
      fprintf (dump_file, "Analysing operand ");
      print_rtl (dump_file, op);
      fprintf (dump_file, " of insn ");
      print_rtl_single (dump_file, insn);
    }

  if (CONSTANT_P (op))
    res = GRD_INVARIANT;
  else if (GET_CODE (op) == SUBREG)
    {
      if (!subreg_lowpart_p (op))
 return 0;

      if (!iv_analyze_op (insn, SUBREG_REG (op), iv))
 return 0;

      return iv_subreg (iv, GET_MODE (op));
    }
  else
    {
      res = iv_get_reaching_def (insn, op, &def);
      if (res == GRD_INVALID)
 {
   if (dump_file)
     fprintf (dump_file, "  not simple.\n");
   return 0;
 }
    }

  if (res == GRD_INVARIANT)
    {
      iv_constant (iv, op, VOIDmode);

      if (dump_file)
 {
   fprintf (dump_file, "  ");
   dump_iv_info (dump_file, iv);
   fprintf (dump_file, "\n");
 }
      return 1;
    }

  if (res == GRD_MAYBE_BIV)
    return iv_analyze_biv (op, iv);

  return iv_analyze_def (def, iv);
}
