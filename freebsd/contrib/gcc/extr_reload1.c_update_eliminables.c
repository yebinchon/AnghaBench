
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {scalar_t__ from; int to; scalar_t__ can_eliminate_previous; scalar_t__ can_eliminate; } ;
typedef int HARD_REG_SET ;


 int CAN_ELIMINATE (scalar_t__,int) ;
 scalar_t__ FRAME_POINTER_REGNUM ;
 scalar_t__ FRAME_POINTER_REQUIRED ;
 scalar_t__ HARD_FRAME_POINTER_REGNUM ;
 size_t NUM_ELIMINABLE_REGS ;
 int SET_HARD_REG_BIT (int ,scalar_t__) ;
 int frame_pointer_needed ;
 int num_eliminable ;
 struct elim_table* reg_eliminate ;

__attribute__((used)) static void
update_eliminables (HARD_REG_SET *pset)
{
  int previous_frame_pointer_needed = frame_pointer_needed;
  struct elim_table *ep;

  for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
    if ((ep->from == HARD_FRAME_POINTER_REGNUM && FRAME_POINTER_REQUIRED)



 )
      ep->can_eliminate = 0;
  for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
    {
      struct elim_table *op;
      int new_to = -1;

      if (! ep->can_eliminate && ep->can_eliminate_previous)
 {


   for (op = reg_eliminate;
        op < &reg_eliminate[NUM_ELIMINABLE_REGS]; op++)
     if (op->from == ep->from && op->can_eliminate)
       {
  new_to = op->to;
  break;
       }



   for (op = reg_eliminate;
        op < &reg_eliminate[NUM_ELIMINABLE_REGS]; op++)
     if (op->from == new_to && op->to == ep->to)
       op->can_eliminate = 0;
 }
    }







  frame_pointer_needed = 1;
  for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
    {
      if (ep->can_eliminate && ep->from == FRAME_POINTER_REGNUM
   && ep->to != HARD_FRAME_POINTER_REGNUM)
 frame_pointer_needed = 0;

      if (! ep->can_eliminate && ep->can_eliminate_previous)
 {
   ep->can_eliminate_previous = 0;
   SET_HARD_REG_BIT (*pset, ep->from);
   num_eliminable--;
 }
    }



  if (frame_pointer_needed && ! previous_frame_pointer_needed)
    SET_HARD_REG_BIT (*pset, HARD_FRAME_POINTER_REGNUM);
}
