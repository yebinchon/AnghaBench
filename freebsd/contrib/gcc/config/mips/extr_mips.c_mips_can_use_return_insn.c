
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_6__ {TYPE_1__* machine; } ;
struct TYPE_5__ {scalar_t__ total_size; scalar_t__ initialized; } ;
struct TYPE_4__ {TYPE_2__ frame; } ;


 int DECL_MODE (int ) ;
 int DECL_RESULT (int ) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ MODE_FLOAT ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ UNITS_PER_FPVALUE ;
 int aggregate_value_p (int ,int ) ;
 TYPE_3__* cfun ;
 scalar_t__ compute_frame_size (int ) ;
 int current_function_decl ;
 scalar_t__ current_function_profile ;
 int get_frame_size () ;
 scalar_t__ mips16_hard_float ;
 scalar_t__* regs_ever_live ;
 int reload_completed ;

int
mips_can_use_return_insn (void)
{
  tree return_type;

  if (! reload_completed)
    return 0;

  if (regs_ever_live[31] || current_function_profile)
    return 0;

  return_type = DECL_RESULT (current_function_decl);




  if (TARGET_MIPS16
      && mips16_hard_float
      && ! aggregate_value_p (return_type, current_function_decl)
      && GET_MODE_CLASS (DECL_MODE (return_type)) == MODE_FLOAT
      && GET_MODE_SIZE (DECL_MODE (return_type)) <= UNITS_PER_FPVALUE)
    return 0;

  if (cfun->machine->frame.initialized)
    return cfun->machine->frame.total_size == 0;

  return compute_frame_size (get_frame_size ()) == 0;
}
