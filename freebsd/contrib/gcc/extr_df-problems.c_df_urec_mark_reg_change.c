
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_urec_bb_info {int gen; int kill; } ;
typedef int rtx ;


 scalar_t__ CLOBBER ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int bitmap_clear_bit (int ,int) ;
 int bitmap_set_bit (int ,int) ;
 scalar_t__** hard_regno_nregs ;

__attribute__((used)) static void
df_urec_mark_reg_change (rtx reg, rtx setter, void *data)
{
  int regno;
  int endregno;
  int i;
  struct df_urec_bb_info *bb_info = (struct df_urec_bb_info*) data;

  if (GET_CODE (reg) == SUBREG)
    reg = SUBREG_REG (reg);

  if (!REG_P (reg))
    return;


  endregno = regno = REGNO (reg);
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      endregno +=hard_regno_nregs[regno][GET_MODE (reg)];

      for (i = regno; i < endregno; i++)
 {
   bitmap_set_bit (bb_info->kill, i);

   if (GET_CODE (setter) != CLOBBER)
     bitmap_set_bit (bb_info->gen, i);
   else
     bitmap_clear_bit (bb_info->gen, i);
 }
    }
  else
    {
      bitmap_set_bit (bb_info->kill, regno);

      if (GET_CODE (setter) != CLOBBER)
 bitmap_set_bit (bb_info->gen, regno);
      else
 bitmap_clear_bit (bb_info->gen, regno);
    }
}
