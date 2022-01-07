
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int GET_MODE_SIZE (size_t) ;
 unsigned int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int UNITS_PER_WORD ;
 unsigned int** hard_regno_nregs ;

__attribute__((used)) static bool
covers_regno_no_parallel_p (rtx dest, unsigned int test_regno)
{
  unsigned int regno, endregno;

  if (GET_CODE (dest) == SUBREG
      && (((GET_MODE_SIZE (GET_MODE (dest))
     + UNITS_PER_WORD - 1) / UNITS_PER_WORD)
   == ((GET_MODE_SIZE (GET_MODE (SUBREG_REG (dest)))
        + UNITS_PER_WORD - 1) / UNITS_PER_WORD)))
    dest = SUBREG_REG (dest);

  if (!REG_P (dest))
    return 0;

  regno = REGNO (dest);
  endregno = (regno >= FIRST_PSEUDO_REGISTER ? regno + 1
       : regno + hard_regno_nregs[regno][GET_MODE (dest)]);
  return (test_regno >= regno && test_regno < endregno);
}
