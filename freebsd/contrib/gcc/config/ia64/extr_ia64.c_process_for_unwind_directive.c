
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_6__ {scalar_t__ next_bb; } ;
struct TYPE_5__ {TYPE_1__* machine; } ;
struct TYPE_4__ {int state_num; } ;
typedef int FILE ;


 scalar_t__ EXIT_BLOCK_PTR ;
 int const GET_CODE (scalar_t__) ;
 scalar_t__ IA64_CHANGE_CFA_IN_EPILOGUE ;
 int const NOTE ;
 TYPE_3__* NOTE_BASIC_BLOCK (scalar_t__) ;
 scalar_t__ NOTE_INSN_BASIC_BLOCK ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 int NULL_RTX ;

 scalar_t__ PATTERN (scalar_t__) ;
 int REG_FRAME_RELATED_EXPR ;
 int RTX_FRAME_RELATED_P (scalar_t__) ;

 int USING_SJLJ_EXCEPTIONS ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 TYPE_2__* cfun ;
 int dwarf2out_do_frame () ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 scalar_t__ flag_exceptions ;
 scalar_t__ flag_unwind_tables ;
 int fprintf (int *,char*,...) ;
 int gcc_unreachable () ;
 int ia64_dwarf2out_def_steady_cfa (scalar_t__) ;
 int last_block ;
 int need_copy_state ;
 int process_set (int *,scalar_t__,scalar_t__,int,int) ;

void
process_for_unwind_directive (FILE *asm_out_file, rtx insn)
{
  bool unwind = (flag_unwind_tables
   || (flag_exceptions && !USING_SJLJ_EXCEPTIONS));
  bool frame = dwarf2out_do_frame ();

  if (unwind || frame)
    {
      rtx pat;

      if (GET_CODE (insn) == NOTE
   && NOTE_LINE_NUMBER (insn) == NOTE_INSN_BASIC_BLOCK)
 {
   last_block = NOTE_BASIC_BLOCK (insn)->next_bb == EXIT_BLOCK_PTR;


   if (need_copy_state)
     {
       if (unwind)
  {
    fprintf (asm_out_file, "\t.body\n");
    fprintf (asm_out_file, "\t.copy_state %d\n",
      cfun->machine->state_num);
  }
       if (IA64_CHANGE_CFA_IN_EPILOGUE && frame)
  ia64_dwarf2out_def_steady_cfa (insn);
       need_copy_state = 0;
     }
 }

      if (GET_CODE (insn) == NOTE || ! RTX_FRAME_RELATED_P (insn))
 return;

      pat = find_reg_note (insn, REG_FRAME_RELATED_EXPR, NULL_RTX);
      if (pat)
 pat = XEXP (pat, 0);
      else
 pat = PATTERN (insn);

      switch (GET_CODE (pat))
        {
 case 128:
   process_set (asm_out_file, pat, insn, unwind, frame);
   break;

 case 129:
   {
     int par_index;
     int limit = XVECLEN (pat, 0);
     for (par_index = 0; par_index < limit; par_index++)
       {
  rtx x = XVECEXP (pat, 0, par_index);
  if (GET_CODE (x) == 128)
    process_set (asm_out_file, x, insn, unwind, frame);
       }
     break;
   }

 default:
   gcc_unreachable ();
 }
    }
}
