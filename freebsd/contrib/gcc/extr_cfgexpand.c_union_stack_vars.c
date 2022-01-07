
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t next; size_t representative; scalar_t__ alignb; int offset; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 size_t EOC ;
 int add_stack_var_conflict (size_t,size_t) ;
 scalar_t__ stack_var_conflict_p (size_t,size_t) ;
 TYPE_1__* stack_vars ;
 size_t stack_vars_num ;

__attribute__((used)) static void
union_stack_vars (size_t a, size_t b, HOST_WIDE_INT offset)
{
  size_t i, last;



  for (last = i = b; i != EOC; last = i, i = stack_vars[i].next)
    {
      stack_vars[i].offset += offset;
      stack_vars[i].representative = a;
    }
  stack_vars[last].next = stack_vars[a].next;
  stack_vars[a].next = b;


  if (stack_vars[a].alignb < stack_vars[b].alignb)
    stack_vars[a].alignb = stack_vars[b].alignb;


  for (last = stack_vars_num, i = 0; i < last; ++i)
    if (stack_var_conflict_p (b, i))
      add_stack_var_conflict (a, i);
}
