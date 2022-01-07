
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_cirrus { ____Placeholder_attr_cirrus } attr_cirrus ;


 int CIRRUS_COMPARE ;
 scalar_t__ CIRRUS_DOUBLE ;
 scalar_t__ CIRRUS_MOVE ;
 scalar_t__ CLOBBER ;
 scalar_t__ FLOAT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN ;
 scalar_t__ JUMP_INSN ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ REG ;
 unsigned int REGNO (int ) ;
 scalar_t__ RETURN ;
 scalar_t__ SET ;
 scalar_t__ USE ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 scalar_t__ XVECLEN (int ,int ) ;
 scalar_t__ arm_cirrus_insn_p (int ) ;
 scalar_t__ arm_memory_load_p (int ) ;
 int emit_insn_after (int ,int ) ;
 int gcc_assert (int) ;
 int gen_nop () ;
 scalar_t__ get_attr_cirrus (int ) ;
 int next_nonnote_insn (int ) ;

__attribute__((used)) static void
cirrus_reorg (rtx first)
{
  enum attr_cirrus attr;
  rtx body = PATTERN (first);
  rtx t;
  int nops;


  if (GET_CODE (first) == JUMP_INSN && GET_CODE (body) != RETURN)
    {
      nops = 0;
      t = next_nonnote_insn (first);

      if (arm_cirrus_insn_p (t))
 ++ nops;

      if (arm_cirrus_insn_p (next_nonnote_insn (t)))
 ++ nops;

      while (nops --)
 emit_insn_after (gen_nop (), first);

      return;
    }


  if (GET_CODE (body) == PARALLEL && XVECLEN (body, 0) > 0)
    body = XVECEXP (body, 0, 0);

  if (GET_CODE (body) == SET)
    {
      rtx lhs = XEXP (body, 0), rhs = XEXP (body, 1);



      if (get_attr_cirrus (first) == CIRRUS_DOUBLE)
 {
   if (arm_cirrus_insn_p (next_nonnote_insn (first)))
     emit_insn_after (gen_nop (), first);

   return;
 }
      else if (arm_memory_load_p (first))
 {
   unsigned int arm_regno;
   if (GET_CODE (lhs) == REG)
     arm_regno = REGNO (lhs);
   else
     {
       gcc_assert (GET_CODE (rhs) == REG);
       arm_regno = REGNO (rhs);
     }


   first = next_nonnote_insn (first);

   if (! arm_cirrus_insn_p (first))
     return;

   body = PATTERN (first);


          if (GET_CODE (body) == PARALLEL && XVECLEN (body, 0))
     body = XVECEXP (body, 0, 0);

   if (GET_CODE (body) == FLOAT)
     body = XEXP (body, 0);

   if (get_attr_cirrus (first) == CIRRUS_MOVE
       && GET_CODE (XEXP (body, 1)) == REG
       && arm_regno == REGNO (XEXP (body, 1)))
     emit_insn_after (gen_nop (), first);

   return;
 }
    }


  if (!first
      || GET_CODE (first) != INSN
      || GET_CODE (PATTERN (first)) == USE
      || GET_CODE (PATTERN (first)) == CLOBBER)
    return;

  attr = get_attr_cirrus (first);



  if (attr == CIRRUS_COMPARE)
    {
      nops = 0;

      t = next_nonnote_insn (first);

      if (arm_cirrus_insn_p (t))
 ++ nops;

      if (arm_cirrus_insn_p (next_nonnote_insn (t)))
 ++ nops;

      while (nops --)
 emit_insn_after (gen_nop (), first);

      return;
    }
}
