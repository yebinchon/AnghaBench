
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ BITS_PER_WORD ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_BITSIZE (int ) ;
 unsigned int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;

__attribute__((used)) static int
verify_wide_reg_1 (rtx *px, void *pregno)
{
  rtx x = *px;
  unsigned int regno = *(int *) pregno;

  if (REG_P (x) && REGNO (x) == regno)
    {
      if (GET_MODE_BITSIZE (GET_MODE (x)) <= BITS_PER_WORD)
 return 2;
      return 1;
    }
  return 0;
}
