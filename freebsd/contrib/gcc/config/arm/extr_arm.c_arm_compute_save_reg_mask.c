
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int sibcall_blocked; scalar_t__ lr_save_eliminated; } ;


 scalar_t__ ARM_FT_NORMAL ;
 scalar_t__ ARM_FUNC_TYPE (unsigned long) ;
 int ARM_HARD_FRAME_POINTER_REGNUM ;
 int ARM_NUM_INTS (int ) ;
 int IP_REGNUM ;
 scalar_t__ IS_NAKED (unsigned long) ;
 scalar_t__ IS_VOLATILE (unsigned long) ;
 int LR_REGNUM ;
 int PC_REGNUM ;
 scalar_t__ TARGET_REALLY_IWMMXT ;
 unsigned int arm_compute_save_reg0_reg12_mask () ;
 unsigned long arm_current_func_type () ;
 int bit_count (unsigned int) ;
 TYPE_2__* cfun ;
 int current_function_calls_eh_return ;
 int current_function_pretend_args_size ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__ optimize_size ;
 scalar_t__* regs_ever_live ;

__attribute__((used)) static unsigned long
arm_compute_save_reg_mask (void)
{
  unsigned int save_reg_mask = 0;
  unsigned long func_type = arm_current_func_type ();

  if (IS_NAKED (func_type))

    return 0;



  if (frame_pointer_needed)
    save_reg_mask |=
      (1 << ARM_HARD_FRAME_POINTER_REGNUM)
      | (1 << IP_REGNUM)
      | (1 << LR_REGNUM)
      | (1 << PC_REGNUM);



  if (IS_VOLATILE (func_type))
    return save_reg_mask;

  save_reg_mask |= arm_compute_save_reg0_reg12_mask ();
  if (regs_ever_live [LR_REGNUM]
   || (save_reg_mask
       && optimize_size
       && ARM_FUNC_TYPE (func_type) == ARM_FT_NORMAL
       && !current_function_calls_eh_return))
    save_reg_mask |= 1 << LR_REGNUM;

  if (cfun->machine->lr_save_eliminated)
    save_reg_mask &= ~ (1 << LR_REGNUM);

  if (TARGET_REALLY_IWMMXT
      && ((bit_count (save_reg_mask)
    + ARM_NUM_INTS (current_function_pretend_args_size)) % 2) != 0)
    {
      unsigned int reg;
      for (reg = 4; reg <= 12; reg++)
 if ((save_reg_mask & (1 << reg)) == 0)
   break;

      if (reg <= 12)
 save_reg_mask |= (1 << reg);
      else
 {
   cfun->machine->sibcall_blocked = 1;
   save_reg_mask |= (1 << 3);
 }
    }

  return save_reg_mask;
}
