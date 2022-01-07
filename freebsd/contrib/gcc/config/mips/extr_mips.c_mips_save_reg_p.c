
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {unsigned int global_pointer; } ;


 int DECL_MODE (int ) ;
 int DECL_RESULT (int ) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 unsigned int GLOBAL_POINTER_REGNUM ;
 int GP_REG_FIRST ;
 unsigned int HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ MODE_FLOAT ;
 scalar_t__ TARGET_ABICALLS ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ TARGET_NEWABI ;
 scalar_t__ UNITS_PER_FPVALUE ;
 int aggregate_value_p (int ,int ) ;
 int * call_used_regs ;
 TYPE_2__* cfun ;
 int current_function_decl ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__ mips16_hard_float ;
 scalar_t__* regs_ever_live ;

__attribute__((used)) static bool
mips_save_reg_p (unsigned int regno)
{

  if (regno == GLOBAL_POINTER_REGNUM)
    return (TARGET_ABICALLS && TARGET_NEWABI
     && cfun->machine->global_pointer == regno);


  if (regs_ever_live[regno] && !call_used_regs[regno])
    return 1;


  if (regno == HARD_FRAME_POINTER_REGNUM && frame_pointer_needed)
    return 1;



  if (regno == GP_REG_FIRST + 31 && regs_ever_live[regno])
    return 1;

  if (TARGET_MIPS16)
    {
      tree return_type;

      return_type = DECL_RESULT (current_function_decl);




      if (regno == GP_REG_FIRST + 18 && regs_ever_live[regno])
 return 1;




      if (regno == GP_REG_FIRST + 31
   && mips16_hard_float
   && !aggregate_value_p (return_type, current_function_decl)
   && GET_MODE_CLASS (DECL_MODE (return_type)) == MODE_FLOAT
   && GET_MODE_SIZE (DECL_MODE (return_type)) <= UNITS_PER_FPVALUE)
 return 1;
    }

  return 0;
}
