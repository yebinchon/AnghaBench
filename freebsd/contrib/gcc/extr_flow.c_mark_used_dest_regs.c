
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct propagate_block_info {int flags; } ;
typedef scalar_t__ rtx ;


 int ARG_POINTER_REGNUM ;
 scalar_t__ CONST_INT ;
 scalar_t__ EXPR_LIST ;
 int FRAME_POINTER_REGNUM ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PROP_AUTOINC ;
 int PROP_REG_INFO ;
 int REGNO (scalar_t__) ;
 int REG_BYTES (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int UNITS_PER_WORD ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ ZERO_EXTRACT ;
 int find_auto_inc (struct propagate_block_info*,scalar_t__,scalar_t__) ;
 scalar_t__* fixed_regs ;
 scalar_t__ frame_pointer_needed ;
 int mark_used_regs (struct propagate_block_info*,scalar_t__,scalar_t__,scalar_t__) ;
 int record_subregs_of_mode (scalar_t__) ;
 int reload_completed ;

__attribute__((used)) static bool
mark_used_dest_regs (struct propagate_block_info *pbi, rtx x, rtx cond, rtx insn)
{
  int regno;
  bool mark_dest = 0;
  rtx dest = x;




  if (GET_CODE (x) == EXPR_LIST
      && GET_CODE (XEXP (x, 1)) == CONST_INT)
    x = XEXP (x, 0);

  if (x == NULL_RTX)
    return 0;



  if (MEM_P (x))
    {




      mark_used_regs (pbi, XEXP (x, 0), cond, insn);
      return 1;
    }
  while (GET_CODE (x) == STRICT_LOW_PART
  || GET_CODE (x) == ZERO_EXTRACT
  || GET_CODE (x) == SUBREG)
    {
      if (GET_CODE (x) == SUBREG
   && !((REG_BYTES (SUBREG_REG (x))
  + UNITS_PER_WORD - 1) / UNITS_PER_WORD
        > (REG_BYTES (x)
    + UNITS_PER_WORD - 1) / UNITS_PER_WORD))
 ;
      else
 mark_dest = 1;

      x = XEXP (x, 0);
    }



  if (REG_P (x)
      && (regno = REGNO (x),
   !(regno == FRAME_POINTER_REGNUM
     && (!reload_completed || frame_pointer_needed)))







      )
    {
      if (mark_dest)
 mark_used_regs (pbi, dest, cond, insn);
      return 1;
    }
  return 0;
}
