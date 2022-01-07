
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {scalar_t__ previous_offset; scalar_t__ offset; scalar_t__ initial_offset; scalar_t__ can_eliminate; } ;


 size_t NUM_ELIMINABLE_REGS ;
 scalar_t__ num_not_at_initial_offset ;
 struct elim_table* reg_eliminate ;

__attribute__((used)) static void
update_eliminable_offsets (void)
{
  struct elim_table *ep;

  num_not_at_initial_offset = 0;
  for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
    {
      ep->previous_offset = ep->offset;
      if (ep->can_eliminate && ep->offset != ep->initial_offset)
 num_not_at_initial_offset++;
    }
}
