
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (int ) ;
 int PATTERN (scalar_t__) ;
 int REGNO (scalar_t__) ;
 int REG_DEAD ;
 int REG_P (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (int ) ;
 int SET_INSN_DELETED (scalar_t__) ;
 int SET_SRC (int ) ;
 scalar_t__ find_regno_note (scalar_t__,int ,int ) ;
 scalar_t__ prev_real_insn (scalar_t__) ;
 scalar_t__ reg_mentioned_p (scalar_t__,int ) ;
 int side_effects_p (int ) ;

__attribute__((used)) static void
delete_dead_insn (rtx insn)
{
  rtx prev = prev_real_insn (insn);
  rtx prev_dest;



  if (prev && GET_CODE (PATTERN (prev)) == SET
      && (prev_dest = SET_DEST (PATTERN (prev)), REG_P (prev_dest))
      && reg_mentioned_p (prev_dest, PATTERN (insn))
      && find_regno_note (insn, REG_DEAD, REGNO (prev_dest))
      && ! side_effects_p (SET_SRC (PATTERN (prev))))
    delete_dead_insn (prev);

  SET_INSN_DELETED (insn);
}
