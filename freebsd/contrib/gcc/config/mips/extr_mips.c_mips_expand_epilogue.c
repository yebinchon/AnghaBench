
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {scalar_t__ total_size; scalar_t__ args_size; int mask; int fmask; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ EH_RETURN_STACKADJ_RTX ;
 scalar_t__ GEN_INT (scalar_t__) ;
 scalar_t__ GP_REG_FIRST ;
 scalar_t__ MIN (scalar_t__,int ) ;
 scalar_t__ MIPS_EPILOGUE_TEMP (int ) ;
 int MIPS_MAX_FIRST_STACK_STEP ;
 int Pmode ;
 int RA_MASK ;
 int SMALL_OPERAND (scalar_t__) ;
 scalar_t__ TARGET_ABICALLS ;
 int TARGET_EXPLICIT_RELOCS ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ TARGET_NEWABI ;
 TYPE_3__* cfun ;
 scalar_t__ current_function_calls_eh_return ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int frame_pointer_needed ;
 int gen_add3_insn (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_blockage () ;
 int gen_return () ;
 int gen_return_internal (int ) ;
 int gen_rtx_REG (int ,scalar_t__) ;
 scalar_t__ hard_frame_pointer_rtx ;
 scalar_t__ mips_can_use_return_insn () ;
 int mips_for_each_saved_reg (scalar_t__,int ) ;
 int mips_restore_reg ;
 scalar_t__ stack_pointer_rtx ;

void
mips_expand_epilogue (int sibcall_p)
{
  HOST_WIDE_INT step1, step2;
  rtx base, target;

  if (!sibcall_p && mips_can_use_return_insn ())
    {
      emit_jump_insn (gen_return ());
      return;
    }






  step1 = cfun->machine->frame.total_size;
  step2 = 0;



  if (!frame_pointer_needed)
    base = stack_pointer_rtx;
  else
    {
      base = hard_frame_pointer_rtx;
      if (TARGET_MIPS16)
 step1 -= cfun->machine->frame.args_size;
    }



  if ((cfun->machine->frame.mask | cfun->machine->frame.fmask) != 0)
    {
      step2 = MIN (step1, MIPS_MAX_FIRST_STACK_STEP);
      step1 -= step2;
    }


  target = base;
  if (step1 > 0)
    {
      rtx adjust;


      adjust = GEN_INT (step1);
      if (!SMALL_OPERAND (step1))
 {
   emit_move_insn (MIPS_EPILOGUE_TEMP (Pmode), adjust);
   adjust = MIPS_EPILOGUE_TEMP (Pmode);
 }


      if (!TARGET_MIPS16)
 target = stack_pointer_rtx;

      emit_insn (gen_add3_insn (target, base, adjust));
    }


  if (target != stack_pointer_rtx)
    emit_move_insn (stack_pointer_rtx, target);




  if (TARGET_ABICALLS && TARGET_NEWABI && !TARGET_EXPLICIT_RELOCS)
    emit_insn (gen_blockage ());


  mips_for_each_saved_reg (cfun->machine->frame.total_size - step2,
      mips_restore_reg);


  if (step2 > 0)
    emit_insn (gen_add3_insn (stack_pointer_rtx,
         stack_pointer_rtx,
         GEN_INT (step2)));



  if (current_function_calls_eh_return)
    {
      if (TARGET_MIPS16)
 {
   emit_move_insn (MIPS_EPILOGUE_TEMP (Pmode), stack_pointer_rtx);
   emit_insn (gen_add3_insn (MIPS_EPILOGUE_TEMP (Pmode),
        MIPS_EPILOGUE_TEMP (Pmode),
        EH_RETURN_STACKADJ_RTX));
   emit_move_insn (stack_pointer_rtx, MIPS_EPILOGUE_TEMP (Pmode));
 }
      else
 emit_insn (gen_add3_insn (stack_pointer_rtx,
      stack_pointer_rtx,
      EH_RETURN_STACKADJ_RTX));
    }

  if (!sibcall_p)
    {

      if (TARGET_MIPS16 && (cfun->machine->frame.mask & RA_MASK) != 0)
 emit_jump_insn (gen_return_internal (gen_rtx_REG (Pmode,
         GP_REG_FIRST + 7)));
      else
 emit_jump_insn (gen_return_internal (gen_rtx_REG (Pmode,
         GP_REG_FIRST + 31)));
    }
}
