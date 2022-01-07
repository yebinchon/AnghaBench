
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ NONJUMP_INSN_P (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ SUBREG ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int XEXP (int ,int ) ;
 int all_btrs ;
 int btr_referenced_p (int ,int *) ;
 int gcc_assert (int) ;
 int single_set (int ) ;

__attribute__((used)) static int
insn_sets_btr_p (rtx insn, int check_const, int *regno)
{
  rtx set;

  if (NONJUMP_INSN_P (insn)
      && (set = single_set (insn)))
    {
      rtx dest = SET_DEST (set);
      rtx src = SET_SRC (set);

      if (GET_CODE (dest) == SUBREG)
 dest = XEXP (dest, 0);

      if (REG_P (dest)
   && TEST_HARD_REG_BIT (all_btrs, REGNO (dest)))
 {
   gcc_assert (!btr_referenced_p (src, ((void*)0)));

   if (!check_const || CONSTANT_P (src))
     {
       if (regno)
  *regno = REGNO (dest);
       return 1;
     }
 }
    }
  return 0;
}
