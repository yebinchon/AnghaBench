
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;


 TYPE_1__* top_stack ;

__attribute__((used)) static void
pop_parse_stack (void)
{
  if (!top_stack)
    return;
  if (top_stack->next)
    top_stack = top_stack->next;
}
