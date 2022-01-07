
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int bitmap ;


 size_t BLKmode ;
 int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 int bitmap_set_bit (int ,int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;

__attribute__((used)) static void
df_mark_reg (rtx reg, void *vset)
{
  bitmap set = (bitmap) vset;
  int regno = REGNO (reg);

  gcc_assert (GET_MODE (reg) != BLKmode);

  bitmap_set_bit (set, regno);
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      int n = hard_regno_nregs[regno][GET_MODE (reg)];
      while (--n > 0)
 bitmap_set_bit (set, regno + n);
    }
}
