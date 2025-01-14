
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_2__ {int hard_reg_full_preferences; int hard_reg_preferences; int hard_reg_copy_preferences; } ;


 int CONFLICTP (int,int) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 size_t REGNO (scalar_t__) ;
 scalar_t__ REG_DEAD ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 TYPE_1__* allocno ;
 scalar_t__ get_insns () ;
 int* reg_allocno ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static void
expand_preferences (void)
{
  rtx insn;
  rtx link;
  rtx set;




  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    if (INSN_P (insn)
 && (set = single_set (insn)) != 0
 && REG_P (SET_DEST (set))
 && reg_allocno[REGNO (SET_DEST (set))] >= 0)
      for (link = REG_NOTES (insn); link; link = XEXP (link, 1))
 if (REG_NOTE_KIND (link) == REG_DEAD
     && REG_P (XEXP (link, 0))
     && reg_allocno[REGNO (XEXP (link, 0))] >= 0
     && ! CONFLICTP (reg_allocno[REGNO (SET_DEST (set))],
       reg_allocno[REGNO (XEXP (link, 0))]))
   {
     int a1 = reg_allocno[REGNO (SET_DEST (set))];
     int a2 = reg_allocno[REGNO (XEXP (link, 0))];

     if (XEXP (link, 0) == SET_SRC (set))
       {
  IOR_HARD_REG_SET (allocno[a1].hard_reg_copy_preferences,
      allocno[a2].hard_reg_copy_preferences);
  IOR_HARD_REG_SET (allocno[a2].hard_reg_copy_preferences,
      allocno[a1].hard_reg_copy_preferences);
       }

     IOR_HARD_REG_SET (allocno[a1].hard_reg_preferences,
         allocno[a2].hard_reg_preferences);
     IOR_HARD_REG_SET (allocno[a2].hard_reg_preferences,
         allocno[a1].hard_reg_preferences);
     IOR_HARD_REG_SET (allocno[a1].hard_reg_full_preferences,
         allocno[a2].hard_reg_full_preferences);
     IOR_HARD_REG_SET (allocno[a2].hard_reg_full_preferences,
         allocno[a1].hard_reg_full_preferences);
   }
}
