
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 scalar_t__ COND_EXEC ;
 int COND_EXEC_CODE (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int XVECEXP (int ,int ,int ) ;
 int recog_memoized (int ) ;
 int single_set_2 (int ,int ) ;

__attribute__((used)) static rtx
ia64_single_set (rtx insn)
{
  rtx x = PATTERN (insn), ret;
  if (GET_CODE (x) == COND_EXEC)
    x = COND_EXEC_CODE (x);
  if (GET_CODE (x) == SET)
    return x;




  switch (recog_memoized (insn))
    {
    case 128:
    case 129:
      ret = XVECEXP (x, 0, 0);
      break;

    default:
      ret = single_set_2 (insn, x);
      break;
    }

  return ret;
}
