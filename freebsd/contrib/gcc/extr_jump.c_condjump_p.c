
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ IF_THEN_ELSE ;
 scalar_t__ LABEL_REF ;
 int PATTERN (int ) ;
 scalar_t__ PC ;
 scalar_t__ RETURN ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int) ;

int
condjump_p (rtx insn)
{
  rtx x = PATTERN (insn);

  if (GET_CODE (x) != SET
      || GET_CODE (SET_DEST (x)) != PC)
    return 0;

  x = SET_SRC (x);
  if (GET_CODE (x) == LABEL_REF)
    return 1;
  else
    return (GET_CODE (x) == IF_THEN_ELSE
     && ((GET_CODE (XEXP (x, 2)) == PC
   && (GET_CODE (XEXP (x, 1)) == LABEL_REF
       || GET_CODE (XEXP (x, 1)) == RETURN))
  || (GET_CODE (XEXP (x, 1)) == PC
      && (GET_CODE (XEXP (x, 2)) == LABEL_REF
   || GET_CODE (XEXP (x, 2)) == RETURN))));
}
