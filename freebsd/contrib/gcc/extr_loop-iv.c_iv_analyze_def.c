
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ base; scalar_t__ step; int mode; } ;
struct df_ref {int dummy; } ;
typedef scalar_t__ rtx ;


 scalar_t__ DF_REF_INSN (struct df_ref*) ;
 struct rtx_iv* DF_REF_IV (struct df_ref*) ;
 scalar_t__ DF_REF_REG (struct df_ref*) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ dump_file ;
 int dump_iv_info (scalar_t__,struct rtx_iv*) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 int iv_analyze_expr (scalar_t__,scalar_t__,int ,struct rtx_iv*) ;
 int print_rtl (scalar_t__,scalar_t__) ;
 int print_rtl_single (scalar_t__,scalar_t__) ;
 int record_iv (struct df_ref*,struct rtx_iv*) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static bool
iv_analyze_def (struct df_ref *def, struct rtx_iv *iv)
{
  rtx insn = DF_REF_INSN (def);
  rtx reg = DF_REF_REG (def);
  rtx set, rhs;

  if (dump_file)
    {
      fprintf (dump_file, "Analysing def of ");
      print_rtl (dump_file, reg);
      fprintf (dump_file, " in insn ");
      print_rtl_single (dump_file, insn);
    }

  if (DF_REF_IV (def))
    {
      if (dump_file)
 fprintf (dump_file, "  already analysed.\n");
      *iv = *DF_REF_IV (def);
      return iv->base != NULL_RTX;
    }

  iv->mode = VOIDmode;
  iv->base = NULL_RTX;
  iv->step = NULL_RTX;

  set = single_set (insn);
  if (!set || SET_DEST (set) != reg)
    return 0;

  rhs = find_reg_equal_equiv_note (insn);
  if (rhs)
    rhs = XEXP (rhs, 0);
  else
    rhs = SET_SRC (set);

  iv_analyze_expr (insn, rhs, GET_MODE (reg), iv);
  record_iv (def, iv);

  if (dump_file)
    {
      print_rtl (dump_file, reg);
      fprintf (dump_file, " in insn ");
      print_rtl_single (dump_file, insn);
      fprintf (dump_file, "  is ");
      dump_iv_info (dump_file, iv);
      fprintf (dump_file, "\n");
    }

  return iv->base != NULL_RTX;
}
