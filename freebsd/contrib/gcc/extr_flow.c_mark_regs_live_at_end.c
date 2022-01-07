
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int regset ;


 unsigned int EH_RETURN_DATA_REGNO (unsigned int) ;
 scalar_t__ EH_RETURN_HANDLER_RTX ;
 scalar_t__ EH_RETURN_STACKADJ_RTX ;
 scalar_t__ EPILOGUE_USES (unsigned int) ;
 int EXIT_IGNORE_STACK ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 unsigned int FRAME_POINTER_REGNUM ;
 int FRAME_POINTER_REQUIRED ;
 unsigned int HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ HAVE_epilogue ;
 unsigned int INVALID_REGNUM ;
 int LOCAL_REGNO (unsigned int) ;
 size_t PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ REG_P (scalar_t__) ;
 int SET_REGNO_REG_SET (int ,unsigned int) ;
 unsigned int STACK_POINTER_REGNUM ;
 int TEST_HARD_REG_BIT (int ,unsigned int) ;
 int current_function_calls_alloca ;
 scalar_t__ current_function_calls_eh_return ;
 scalar_t__ current_function_sp_is_unchanging ;
 int diddle_return_value (int (*) (scalar_t__,int ),int ) ;
 scalar_t__ epilogue_completed ;
 scalar_t__* fixed_regs ;
 scalar_t__ flag_omit_frame_pointer ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__* global_regs ;
 int mark_reg (scalar_t__,int ) ;
 scalar_t__* regs_ever_live ;
 int regs_invalidated_by_call ;
 scalar_t__ reload_completed ;

__attribute__((used)) static void
mark_regs_live_at_end (regset set)
{
  unsigned int i;



  if ((HAVE_epilogue && epilogue_completed)
      || ! EXIT_IGNORE_STACK
      || (! FRAME_POINTER_REQUIRED
   && ! current_function_calls_alloca
   && flag_omit_frame_pointer)
      || current_function_sp_is_unchanging)
    {
      SET_REGNO_REG_SET (set, STACK_POINTER_REGNUM);
    }





  if (! reload_completed || frame_pointer_needed)
    {
      SET_REGNO_REG_SET (set, FRAME_POINTER_REGNUM);





    }





  if ((unsigned) PIC_OFFSET_TABLE_REGNUM != INVALID_REGNUM
      && fixed_regs[PIC_OFFSET_TABLE_REGNUM])
    SET_REGNO_REG_SET (set, PIC_OFFSET_TABLE_REGNUM);





  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (global_regs[i] || EPILOGUE_USES (i))
      SET_REGNO_REG_SET (set, i);

  if (HAVE_epilogue && epilogue_completed)
    {

      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
 if (regs_ever_live[i] && ! LOCAL_REGNO (i)
     && ! TEST_HARD_REG_BIT (regs_invalidated_by_call, i))
   SET_REGNO_REG_SET (set, i);
    }
  diddle_return_value (mark_reg, set);
}
