
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function {TYPE_1__* emit; } ;
struct emit_status {int dummy; } ;
typedef int rtx ;
struct TYPE_2__ {int regno_pointer_align_length; int regno_pointer_align; } ;
typedef int REG_POINTER ;
typedef int REGNO_POINTER_ALIGN ;


 int BITS_PER_WORD ;
 int FIRST_PSEUDO_REGISTER ;
 int INIT_EXPANDERS ;
 void* LAST_VIRTUAL_REGISTER ;
 int STACK_BOUNDARY ;
 int UNKNOWN_LOCATION ;
 struct function* cfun ;
 int cur_insn_uid ;
 int * first_insn ;
 int first_label_num ;
 void* ggc_alloc (int) ;
 int ggc_alloc_cleared (int) ;
 int init_virtual_regs (TYPE_1__*) ;
 int label_num ;
 int * last_insn ;
 int last_location ;
 int memcpy (void*,int ,int) ;
 void* reg_rtx_no ;
 void* regno_reg_rtx ;
 int * seq_stack ;
 int static_regno_reg_rtx ;

void
init_emit (void)
{
  struct function *f = cfun;

  f->emit = ggc_alloc (sizeof (struct emit_status));
  first_insn = ((void*)0);
  last_insn = ((void*)0);
  cur_insn_uid = 1;
  reg_rtx_no = LAST_VIRTUAL_REGISTER + 1;
  last_location = UNKNOWN_LOCATION;
  first_label_num = label_num;
  seq_stack = ((void*)0);



  f->emit->regno_pointer_align_length = LAST_VIRTUAL_REGISTER + 101;

  f->emit->regno_pointer_align
    = ggc_alloc_cleared (f->emit->regno_pointer_align_length
    * sizeof (unsigned char));

  regno_reg_rtx
    = ggc_alloc (f->emit->regno_pointer_align_length * sizeof (rtx));


  memcpy (regno_reg_rtx,
   static_regno_reg_rtx,
   FIRST_PSEUDO_REGISTER * sizeof (rtx));


  init_virtual_regs (f->emit);



  REG_POINTER (stack_pointer_rtx) = 1;
  REG_POINTER (frame_pointer_rtx) = 1;
  REG_POINTER (hard_frame_pointer_rtx) = 1;
  REG_POINTER (arg_pointer_rtx) = 1;

  REG_POINTER (virtual_incoming_args_rtx) = 1;
  REG_POINTER (virtual_stack_vars_rtx) = 1;
  REG_POINTER (virtual_stack_dynamic_rtx) = 1;
  REG_POINTER (virtual_outgoing_args_rtx) = 1;
  REG_POINTER (virtual_cfa_rtx) = 1;
}
