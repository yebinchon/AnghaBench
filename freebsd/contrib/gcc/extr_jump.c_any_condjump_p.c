
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ IF_THEN_ELSE ;
 int LABEL_REF ;
 int PC ;
 int RETURN ;
 int SET_SRC (int ) ;
 int XEXP (int ,int) ;
 int pc_set (int ) ;

int
any_condjump_p (rtx insn)
{
  rtx x = pc_set (insn);
  enum rtx_code a, b;

  if (!x)
    return 0;
  if (GET_CODE (SET_SRC (x)) != IF_THEN_ELSE)
    return 0;

  a = GET_CODE (XEXP (SET_SRC (x), 1));
  b = GET_CODE (XEXP (SET_SRC (x), 2));

  return ((b == PC && (a == LABEL_REF || a == RETURN))
   || (a == PC && (b == LABEL_REF || b == RETURN)));
}
