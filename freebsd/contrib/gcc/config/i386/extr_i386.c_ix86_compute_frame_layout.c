
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ix86_frame {int nregs; int save_regs_using_mov; int hard_frame_pointer_offset; int va_arg_size; int padding1; int frame_pointer_offset; int outgoing_arguments_size; int padding2; int stack_pointer_offset; int to_allocate; int red_zone_size; } ;
struct TYPE_4__ {unsigned int stack_alignment_needed; unsigned int preferred_stack_boundary; scalar_t__ function_frequency; TYPE_1__* machine; } ;
struct TYPE_3__ {int use_fast_prologue_epilogue_nregs; int use_fast_prologue_epilogue; } ;
typedef int HOST_WIDE_INT ;


 scalar_t__ ACCUMULATE_OUTGOING_ARGS ;
 unsigned int BITS_PER_UNIT ;
 int FAST_PROLOGUE_INSN_COUNT ;
 scalar_t__ FUNCTION_FREQUENCY_HOT ;
 scalar_t__ FUNCTION_FREQUENCY_NORMAL ;
 unsigned int PREFERRED_STACK_BOUNDARY ;
 int RED_ZONE_RESERVE ;
 int RED_ZONE_SIZE ;
 unsigned int STACK_BOUNDARY ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_PROLOGUE_USING_MOVE ;
 scalar_t__ TARGET_RED_ZONE ;
 int UNITS_PER_WORD ;
 int X86_64_VARARGS_SIZE ;
 TYPE_2__* cfun ;
 scalar_t__ current_function_calls_alloca ;
 scalar_t__ current_function_is_leaf ;
 int current_function_outgoing_args_size ;
 scalar_t__ current_function_sp_is_unchanging ;
 int expensive_function_p (int) ;
 scalar_t__ flag_branch_probabilities ;
 int fprintf (int ,char*,unsigned int) ;
 scalar_t__ frame_pointer_needed ;
 int gcc_assert (int) ;
 int get_frame_size () ;
 scalar_t__ ix86_current_function_calls_tls_descriptor ;
 int ix86_nsaved_regs () ;
 scalar_t__ ix86_save_varrargs_registers ;
 int optimize_size ;
 int stderr ;

__attribute__((used)) static void
ix86_compute_frame_layout (struct ix86_frame *frame)
{
  HOST_WIDE_INT total_size;
  unsigned int stack_alignment_needed;
  HOST_WIDE_INT offset;
  unsigned int preferred_alignment;
  HOST_WIDE_INT size = get_frame_size ();

  frame->nregs = ix86_nsaved_regs ();
  total_size = size;

  stack_alignment_needed = cfun->stack_alignment_needed / BITS_PER_UNIT;
  preferred_alignment = cfun->preferred_stack_boundary / BITS_PER_UNIT;





  if (!optimize_size
      && cfun->machine->use_fast_prologue_epilogue_nregs != frame->nregs)
    {
      int count = frame->nregs;

      cfun->machine->use_fast_prologue_epilogue_nregs = count;
      if (count)
 count = (count - 1) * FAST_PROLOGUE_INSN_COUNT;
      if (cfun->function_frequency < FUNCTION_FREQUENCY_NORMAL
   || (flag_branch_probabilities
       && cfun->function_frequency < FUNCTION_FREQUENCY_HOT))
        cfun->machine->use_fast_prologue_epilogue = 0;
      else
        cfun->machine->use_fast_prologue_epilogue
    = !expensive_function_p (count);
    }
  if (TARGET_PROLOGUE_USING_MOVE
      && cfun->machine->use_fast_prologue_epilogue)
    frame->save_regs_using_mov = 1;
  else
    frame->save_regs_using_mov = 0;



  offset = frame_pointer_needed ? UNITS_PER_WORD * 2 : UNITS_PER_WORD;

  frame->hard_frame_pointer_offset = offset;





  gcc_assert (!size || stack_alignment_needed);
  gcc_assert (preferred_alignment >= STACK_BOUNDARY / BITS_PER_UNIT);
  gcc_assert (preferred_alignment <= PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT);
  gcc_assert (stack_alignment_needed
       <= PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT);

  if (stack_alignment_needed < STACK_BOUNDARY / BITS_PER_UNIT)
    stack_alignment_needed = STACK_BOUNDARY / BITS_PER_UNIT;


  offset += frame->nregs * UNITS_PER_WORD;


  if (ix86_save_varrargs_registers)
    {
      offset += X86_64_VARARGS_SIZE;
      frame->va_arg_size = X86_64_VARARGS_SIZE;
    }
  else
    frame->va_arg_size = 0;


  frame->padding1 = ((offset + stack_alignment_needed - 1)
       & -stack_alignment_needed) - offset;

  offset += frame->padding1;


  frame->frame_pointer_offset = offset;

  offset += size;






  if (ACCUMULATE_OUTGOING_ARGS
      && (!current_function_is_leaf || current_function_calls_alloca
   || ix86_current_function_calls_tls_descriptor))
    {
      offset += current_function_outgoing_args_size;
      frame->outgoing_arguments_size = current_function_outgoing_args_size;
    }
  else
    frame->outgoing_arguments_size = 0;



  if (!current_function_is_leaf || current_function_calls_alloca
      || ix86_current_function_calls_tls_descriptor)
    frame->padding2 = ((offset + preferred_alignment - 1)
         & -preferred_alignment) - offset;
  else
    frame->padding2 = 0;

  offset += frame->padding2;


  frame->stack_pointer_offset = offset;


  frame->to_allocate =
    (size + frame->padding1 + frame->padding2
     + frame->outgoing_arguments_size + frame->va_arg_size);

  if ((!frame->to_allocate && frame->nregs <= 1)
      || (TARGET_64BIT && frame->to_allocate >= (HOST_WIDE_INT) 0x80000000))
    frame->save_regs_using_mov = 0;

  if (TARGET_RED_ZONE && current_function_sp_is_unchanging
      && current_function_is_leaf
      && !ix86_current_function_calls_tls_descriptor)
    {
      frame->red_zone_size = frame->to_allocate;
      if (frame->save_regs_using_mov)
 frame->red_zone_size += frame->nregs * UNITS_PER_WORD;
      if (frame->red_zone_size > RED_ZONE_SIZE - RED_ZONE_RESERVE)
 frame->red_zone_size = RED_ZONE_SIZE - RED_ZONE_RESERVE;
    }
  else
    frame->red_zone_size = 0;
  frame->to_allocate -= frame->red_zone_size;
  frame->stack_pointer_offset -= frame->red_zone_size;
}
