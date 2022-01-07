
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int dummy; } ;
typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int NULL_RTX ;
 unsigned int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 unsigned int** hard_regno_nregs ;
 int kill_value_regno (unsigned int,unsigned int,struct value_data*) ;
 int simplify_subreg (size_t,int ,size_t,int ) ;

__attribute__((used)) static void
kill_value (rtx x, struct value_data *vd)
{
  rtx orig_rtx = x;

  if (GET_CODE (x) == SUBREG)
    {
      x = simplify_subreg (GET_MODE (x), SUBREG_REG (x),
      GET_MODE (SUBREG_REG (x)), SUBREG_BYTE (x));
      if (x == NULL_RTX)
 x = SUBREG_REG (orig_rtx);
    }
  if (REG_P (x))
    {
      unsigned int regno = REGNO (x);
      unsigned int n = hard_regno_nregs[regno][GET_MODE (x)];

      kill_value_regno (regno, n, vd);
    }
}
