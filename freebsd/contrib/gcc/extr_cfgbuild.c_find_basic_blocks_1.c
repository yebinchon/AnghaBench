
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef int basic_block ;



 scalar_t__ BARRIER_P (scalar_t__) ;


 int ENTRY_BLOCK_PTR ;
 int GET_CODE (scalar_t__) ;


 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;

 int NOTE_INSN_BASIC_BLOCK ;
 int NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int clear_aux_for_blocks () ;
 scalar_t__ control_flow_insn_p (scalar_t__) ;
 int create_basic_block_structure (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ delete_insn (scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ inside_basic_block_p (scalar_t__) ;
 scalar_t__ last_basic_block ;
 scalar_t__ n_basic_blocks ;

__attribute__((used)) static void
find_basic_blocks_1 (rtx f)
{
  rtx insn, next;
  rtx bb_note = NULL_RTX;
  rtx head = NULL_RTX;
  rtx end = NULL_RTX;
  basic_block prev = ENTRY_BLOCK_PTR;







  for (insn = f; insn; insn = next)
    {
      enum rtx_code code = GET_CODE (insn);

      next = NEXT_INSN (insn);

      if ((LABEL_P (insn) || BARRIER_P (insn))
   && head)
 {
   prev = create_basic_block_structure (head, end, bb_note, prev);
   head = end = NULL_RTX;
   bb_note = NULL_RTX;
 }

      if (inside_basic_block_p (insn))
 {
   if (head == NULL_RTX)
     head = insn;
   end = insn;
 }

      if (head && control_flow_insn_p (insn))
 {
   prev = create_basic_block_structure (head, end, bb_note, prev);
   head = end = NULL_RTX;
   bb_note = NULL_RTX;
 }

      switch (code)
 {
 case 128:
   {
     int kind = NOTE_LINE_NUMBER (insn);





     if (kind == NOTE_INSN_BASIC_BLOCK)
       {
  if (bb_note == NULL_RTX)
    bb_note = insn;
  else
    next = delete_insn (insn);
       }
     break;
   }

 case 131:
 case 129:
 case 132:
 case 130:
 case 133:
   break;

 default:
   gcc_unreachable ();
 }
    }

  if (head != NULL_RTX)
    create_basic_block_structure (head, end, bb_note, prev);
  else if (bb_note)
    delete_insn (bb_note);

  gcc_assert (last_basic_block == n_basic_blocks);

  clear_aux_for_blocks ();
}
