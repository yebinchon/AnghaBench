
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ LABEL_REF ;
 int NULL_RTX ;
 int REG_NON_LOCAL_GOTO ;
 int SET_SRC (int ) ;
 scalar_t__ find_reg_note (int ,int ,int ) ;
 int pc_set (int ) ;

int
any_uncondjump_p (rtx insn)
{
  rtx x = pc_set (insn);
  if (!x)
    return 0;
  if (GET_CODE (SET_SRC (x)) != LABEL_REF)
    return 0;
  if (find_reg_note (insn, REG_NON_LOCAL_GOTO, NULL_RTX))
    return 0;
  return 1;
}
