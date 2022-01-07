
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df_ref {int dummy; } ;
typedef int rtx ;
typedef enum iv_grd_result { ____Placeholder_iv_grd_result } iv_grd_result ;
typedef scalar_t__ basic_block ;
struct TYPE_2__ {struct df_ref* ref; scalar_t__ next; } ;


 scalar_t__ BLOCK_FOR_INSN (int ) ;
 int CDI_DOMINATORS ;
 scalar_t__ DF_INSN_LUID (int ,int ) ;
 scalar_t__ DF_REF_BB (struct df_ref*) ;
 TYPE_1__* DF_REF_CHAIN (struct df_ref*) ;
 int DF_REF_INSN (struct df_ref*) ;
 scalar_t__ GET_CODE (int ) ;
 int GRD_INVALID ;
 int GRD_INVARIANT ;
 int GRD_MAYBE_BIV ;
 int GRD_SINGLE_DOM ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int current_loop ;
 int df ;
 struct df_ref* df_find_use (int ,int ,int ) ;
 int dominated_by_p (int ,scalar_t__,scalar_t__) ;
 int gcc_assert (int ) ;
 scalar_t__ just_once_each_iteration_p (int ,scalar_t__) ;
 int simple_reg_p (int ) ;

__attribute__((used)) static enum iv_grd_result
iv_get_reaching_def (rtx insn, rtx reg, struct df_ref **def)
{
  struct df_ref *use, *adef;
  basic_block def_bb, use_bb;
  rtx def_insn;
  bool dom_p;

  *def = ((void*)0);
  if (!simple_reg_p (reg))
    return GRD_INVALID;
  if (GET_CODE (reg) == SUBREG)
    reg = SUBREG_REG (reg);
  gcc_assert (REG_P (reg));

  use = df_find_use (df, insn, reg);
  gcc_assert (use != ((void*)0));

  if (!DF_REF_CHAIN (use))
    return GRD_INVARIANT;


  if (DF_REF_CHAIN (use)->next)
    return GRD_INVALID;

  adef = DF_REF_CHAIN (use)->ref;
  def_insn = DF_REF_INSN (adef);
  def_bb = DF_REF_BB (adef);
  use_bb = BLOCK_FOR_INSN (insn);

  if (use_bb == def_bb)
    dom_p = (DF_INSN_LUID (df, def_insn) < DF_INSN_LUID (df, insn));
  else
    dom_p = dominated_by_p (CDI_DOMINATORS, use_bb, def_bb);

  if (dom_p)
    {
      *def = adef;
      return GRD_SINGLE_DOM;
    }




  if (just_once_each_iteration_p (current_loop, def_bb))
    return GRD_MAYBE_BIV;

  return GRD_INVALID;
}
