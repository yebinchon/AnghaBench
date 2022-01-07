
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {int initial_offset; int offset; int previous_offset; int to; int from; } ;


 int INITIAL_ELIMINATION_OFFSET (int ,int ,int ) ;
 int INITIAL_FRAME_POINTER_OFFSET (int ) ;
 size_t NUM_ELIMINABLE_REGS ;
 scalar_t__ num_not_at_initial_offset ;
 struct elim_table* reg_eliminate ;

__attribute__((used)) static void
set_initial_elim_offsets (void)
{
  struct elim_table *ep = reg_eliminate;
  INITIAL_FRAME_POINTER_OFFSET (ep->initial_offset);
  ep->previous_offset = ep->offset = ep->initial_offset;


  num_not_at_initial_offset = 0;
}
