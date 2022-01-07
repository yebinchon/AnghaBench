
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int ADDR_DIFF_VEC ;
 int ADDR_VEC ;



 int GET_CODE (scalar_t__) ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 int delete_insn (scalar_t__) ;
 int emit_barrier () ;
 int emit_copy_of_insn_after (scalar_t__,int ) ;
 scalar_t__ emit_note (int) ;
 int emit_note_copy (scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_last_insn () ;

rtx
duplicate_insn_chain (rtx from, rtx to)
{
  rtx insn, last;



  last = emit_note (135);



  for (insn = from; insn != NEXT_INSN (to); insn = NEXT_INSN (insn))
    {
      switch (GET_CODE (insn))
 {
 case 139:
 case 141:
 case 138:



   if (GET_CODE (PATTERN (insn)) == ADDR_VEC
       || GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC)
     break;
   emit_copy_of_insn_after (insn, get_last_insn ());
   break;

 case 140:
   break;

 case 142:
   emit_barrier ();
   break;

 case 137:
   switch (NOTE_LINE_NUMBER (insn))
     {


     case 130:

     case 135:
     case 134:

     case 133:
     case 131:




     case 132:

     case 136:
       break;

     case 129:
     case 128:
       emit_note_copy (insn);
       break;

     default:


       gcc_assert (NOTE_LINE_NUMBER (insn) >= 0);



       emit_note_copy (insn);
     }
   break;
 default:
   gcc_unreachable ();
 }
    }
  insn = NEXT_INSN (last);
  delete_insn (last);
  return insn;
}
