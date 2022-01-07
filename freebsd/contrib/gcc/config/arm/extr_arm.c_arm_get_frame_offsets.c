
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arm_stack_offsets {int saved_args; int frame; int saved_regs; int soft_frame; int outgoing_args; int locals_base; } ;
typedef struct arm_stack_offsets arm_stack_offsets ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {struct arm_stack_offsets stack_offsets; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ ARM_DOUBLEWORD_ALIGN ;
 int CALLER_INTERWORKING_SLOT_SIZE ;
 unsigned int FIRST_FPA_REGNUM ;
 unsigned int FIRST_IWMMXT_REGNUM ;
 int IS_VOLATILE (unsigned long) ;
 unsigned int LAST_FPA_REGNUM ;
 unsigned int LAST_IWMMXT_REGNUM ;
 scalar_t__ ROUND_UP_WORD (int ) ;
 scalar_t__ TARGET_ARM ;
 scalar_t__ TARGET_BACKTRACE ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_REALLY_IWMMXT ;
 scalar_t__ TARGET_VFP ;
 int arm_compute_save_reg_mask () ;
 unsigned long arm_current_func_type () ;
 scalar_t__ arm_get_vfp_saved_size () ;
 int bit_count (int ) ;
 int * call_used_regs ;
 TYPE_2__* cfun ;
 int current_function_outgoing_args_size ;
 int current_function_pretend_args_size ;
 scalar_t__ frame_pointer_needed ;
 int gcc_assert (int) ;
 int get_frame_size () ;
 int leaf_function_p () ;
 scalar_t__* regs_ever_live ;
 scalar_t__ reload_completed ;
 int thumb_compute_save_reg_mask () ;

__attribute__((used)) static arm_stack_offsets *
arm_get_frame_offsets (void)
{
  struct arm_stack_offsets *offsets;
  unsigned long func_type;
  int leaf;
  int saved;
  HOST_WIDE_INT frame_size;

  offsets = &cfun->machine->stack_offsets;
  if (reload_completed)
    return offsets;



  frame_size = ROUND_UP_WORD (get_frame_size ());

  leaf = leaf_function_p ();


  offsets->saved_args = current_function_pretend_args_size;

  offsets->frame = offsets->saved_args + (frame_pointer_needed ? 4 : 0);

  if (TARGET_ARM)
    {
      unsigned int regno;

      saved = bit_count (arm_compute_save_reg_mask ()) * 4;





      if (TARGET_REALLY_IWMMXT)
 {

   for (regno = FIRST_IWMMXT_REGNUM;
        regno <= LAST_IWMMXT_REGNUM;
        regno++)
     if (regs_ever_live [regno] && ! call_used_regs [regno])
       saved += 8;
 }

      func_type = arm_current_func_type ();
      if (! IS_VOLATILE (func_type))
 {

   for (regno = FIRST_FPA_REGNUM; regno <= LAST_FPA_REGNUM; regno++)
   if (regs_ever_live[regno] && ! call_used_regs[regno])
     saved += 12;


   if (TARGET_HARD_FLOAT && TARGET_VFP)
     saved += arm_get_vfp_saved_size ();
 }
    }
  else
    {
      saved = bit_count (thumb_compute_save_reg_mask ()) * 4;
      if (TARGET_BACKTRACE)
 saved += 16;
    }


  offsets->saved_regs = offsets->saved_args + saved;
  offsets->soft_frame = offsets->saved_regs + CALLER_INTERWORKING_SLOT_SIZE;


  if (leaf && frame_size == 0)
    {
      offsets->outgoing_args = offsets->soft_frame;
      offsets->locals_base = offsets->soft_frame;
      return offsets;
    }


  if (ARM_DOUBLEWORD_ALIGN
      && (offsets->soft_frame & 7))
    offsets->soft_frame += 4;

  offsets->locals_base = offsets->soft_frame + frame_size;
  offsets->outgoing_args = (offsets->locals_base
       + current_function_outgoing_args_size);

  if (ARM_DOUBLEWORD_ALIGN)
    {

      if (offsets->outgoing_args & 7)
 offsets->outgoing_args += 4;
      gcc_assert (!(offsets->outgoing_args & 7));
    }

  return offsets;
}
