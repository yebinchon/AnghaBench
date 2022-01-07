
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int far_jump_used; int arg_pointer_live; } ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 size_t ARG_POINTER_REGNUM ;
 scalar_t__ ARM_DOUBLEWORD_ALIGN ;
 scalar_t__ FAR_JUMP_YES ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ JUMP_INSN ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 TYPE_2__* cfun ;
 scalar_t__ get_attr_far_jump (scalar_t__) ;
 scalar_t__ get_insns () ;
 scalar_t__* regs_ever_live ;
 scalar_t__ reload_completed ;

__attribute__((used)) static int
thumb_far_jump_used_p (void)
{
  rtx insn;
  if (cfun->machine->far_jump_used)
    return 1;




  if (!(ARM_DOUBLEWORD_ALIGN || reload_completed))
    {
      if (regs_ever_live [ARG_POINTER_REGNUM])
 cfun->machine->arg_pointer_live = 1;
      else if (!cfun->machine->arg_pointer_live)
 return 0;
    }



  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    {
      if (GET_CODE (insn) == JUMP_INSN

   && GET_CODE (PATTERN (insn)) != ADDR_VEC
   && GET_CODE (PATTERN (insn)) != ADDR_DIFF_VEC
   && get_attr_far_jump (insn) == FAR_JUMP_YES
   )
 {


   cfun->machine->far_jump_used = 1;
   return 1;
 }
    }

  return 0;
}
