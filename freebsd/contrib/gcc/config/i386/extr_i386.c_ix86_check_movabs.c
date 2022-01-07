
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 int MEM_VOLATILE_P (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ volatile_ok ;

int
ix86_check_movabs (rtx insn, int opnum)
{
  rtx set, mem;

  set = PATTERN (insn);
  if (GET_CODE (set) == PARALLEL)
    set = XVECEXP (set, 0, 0);
  gcc_assert (GET_CODE (set) == SET);
  mem = XEXP (set, opnum);
  while (GET_CODE (mem) == SUBREG)
    mem = SUBREG_REG (mem);
  gcc_assert (GET_CODE (mem) == MEM);
  return (volatile_ok || !MEM_VOLATILE_P (mem));
}
