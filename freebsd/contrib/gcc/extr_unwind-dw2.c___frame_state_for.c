
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct frame_state {int* saved; int eh_ptr; int args_size; int retaddr_column; int cfa_reg; int cfa_offset; int * reg_or_offset; } ;
struct _Unwind_Context {int args_size; void* ra; int flags; } ;
struct TYPE_8__ {TYPE_2__* reg; } ;
struct TYPE_9__ {scalar_t__ cfa_how; int eh_ptr; int retaddr_column; int cfa_reg; int cfa_offset; TYPE_3__ regs; } ;
typedef TYPE_4__ _Unwind_FrameState ;
struct TYPE_6__ {int offset; int reg; } ;
struct TYPE_7__ {int how; TYPE_1__ loc; } ;


 scalar_t__ CFA_EXP ;
 int EXTENDED_CONTEXT_BIT ;
 int PRE_GCC3_DWARF_FRAME_REGISTERS ;


 scalar_t__ _URC_NO_REASON ;
 int memset (struct _Unwind_Context*,int ,int) ;
 scalar_t__ uw_frame_state_for (struct _Unwind_Context*,TYPE_4__*) ;

struct frame_state *
__frame_state_for (void *pc_target, struct frame_state *state_in)
{
  struct _Unwind_Context context;
  _Unwind_FrameState fs;
  int reg;

  memset (&context, 0, sizeof (struct _Unwind_Context));
  context.flags = EXTENDED_CONTEXT_BIT;
  context.ra = pc_target + 1;

  if (uw_frame_state_for (&context, &fs) != _URC_NO_REASON)
    return 0;



  if (fs.cfa_how == CFA_EXP)
    return 0;

  for (reg = 0; reg < PRE_GCC3_DWARF_FRAME_REGISTERS + 1; reg++)
    {
      state_in->saved[reg] = fs.regs.reg[reg].how;
      switch (state_in->saved[reg])
 {
 case 128:
   state_in->reg_or_offset[reg] = fs.regs.reg[reg].loc.reg;
   break;
 case 129:
   state_in->reg_or_offset[reg] = fs.regs.reg[reg].loc.offset;
   break;
 default:
   state_in->reg_or_offset[reg] = 0;
   break;
 }
    }

  state_in->cfa_offset = fs.cfa_offset;
  state_in->cfa_reg = fs.cfa_reg;
  state_in->retaddr_column = fs.retaddr_column;
  state_in->args_size = context.args_size;
  state_in->eh_ptr = fs.eh_ptr;

  return state_in;
}
