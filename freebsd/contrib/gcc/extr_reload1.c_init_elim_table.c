
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table_1 {scalar_t__ from; scalar_t__ to; } ;
struct elim_table {scalar_t__ from; scalar_t__ to; int can_eliminate; int can_eliminate_previous; void* to_rtx; void* from_rtx; } ;


 scalar_t__ CAN_ELIMINATE (scalar_t__,scalar_t__) ;
 scalar_t__ EXIT_IGNORE_STACK ;
 scalar_t__ FRAME_POINTER_REQUIRED ;
 size_t NUM_ELIMINABLE_REGS ;
 int Pmode ;
 scalar_t__ STACK_POINTER_REGNUM ;
 scalar_t__ current_function_accesses_prior_frames ;
 scalar_t__ current_function_calls_alloca ;
 int flag_omit_frame_pointer ;
 int frame_pointer_needed ;
 void* gen_rtx_REG (int ,scalar_t__) ;
 scalar_t__ num_eliminable ;
 struct elim_table* reg_eliminate ;
 struct elim_table_1* reg_eliminate_1 ;
 struct elim_table* xcalloc (int,size_t) ;

__attribute__((used)) static void
init_elim_table (void)
{
  struct elim_table *ep;




  if (!reg_eliminate)
    reg_eliminate = xcalloc (sizeof (struct elim_table), NUM_ELIMINABLE_REGS);



  frame_pointer_needed = (! flag_omit_frame_pointer





     || (current_function_calls_alloca
         && EXIT_IGNORE_STACK)
     || current_function_accesses_prior_frames
     || FRAME_POINTER_REQUIRED);

  num_eliminable = 0;
  reg_eliminate[0].from = reg_eliminate_1[0].from;
  reg_eliminate[0].to = reg_eliminate_1[0].to;
  reg_eliminate[0].can_eliminate = reg_eliminate[0].can_eliminate_previous
    = ! frame_pointer_needed;






  for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
    {
      num_eliminable += ep->can_eliminate;
      ep->from_rtx = gen_rtx_REG (Pmode, ep->from);
      ep->to_rtx = gen_rtx_REG (Pmode, ep->to);
    }
}
