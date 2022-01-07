
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ARG_POINTER_CFA_OFFSET (int ) ;
 int REGNO (int ) ;
 int arg_pointer_rtx ;
 int current_function_decl ;
 int dwarf2out_def_cfa (int ,int ,scalar_t__) ;
 scalar_t__ frame_pointer_needed ;
 int hard_frame_pointer_rtx ;
 int ia64_emit_deleted_label_after_insn (int ) ;
 scalar_t__ ia64_initial_elimination_offset (int ,int ) ;
 int stack_pointer_rtx ;

__attribute__((used)) static void
ia64_dwarf2out_def_steady_cfa (rtx insn)
{
  rtx fp = frame_pointer_needed
    ? hard_frame_pointer_rtx
    : stack_pointer_rtx;

  dwarf2out_def_cfa
    (ia64_emit_deleted_label_after_insn (insn),
     REGNO (fp),
     ia64_initial_elimination_offset
     (REGNO (arg_pointer_rtx), REGNO (fp))
     + ARG_POINTER_CFA_OFFSET (current_function_decl));
}
