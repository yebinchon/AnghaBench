
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int state_num; } ;
typedef int FILE ;


 scalar_t__ IA64_CHANGE_CFA_IN_EPILOGUE ;
 int INCOMING_FRAME_SP_OFFSET ;
 int STACK_POINTER_REGNUM ;
 TYPE_2__* cfun ;
 int dwarf2out_def_cfa (int ,int ,int ) ;
 int fprintf (int *,char*,...) ;
 int ia64_emit_deleted_label_after_insn (int ) ;
 int last_block ;
 int need_copy_state ;

__attribute__((used)) static void
process_epilogue (FILE *asm_out_file, rtx insn, bool unwind, bool frame)
{



  if (!last_block)
    {
      if (unwind)
 fprintf (asm_out_file, "\t.label_state %d\n",
   ++cfun->machine->state_num);
      need_copy_state = 1;
    }

  if (unwind)
    fprintf (asm_out_file, "\t.restore sp\n");
  if (IA64_CHANGE_CFA_IN_EPILOGUE && frame)
    dwarf2out_def_cfa (ia64_emit_deleted_label_after_insn (insn),
         STACK_POINTER_REGNUM, INCOMING_FRAME_SP_OFFSET);
}
