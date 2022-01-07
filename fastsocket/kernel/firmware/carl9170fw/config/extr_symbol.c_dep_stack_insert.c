
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dep_stack {struct symbol* sym; struct dep_stack* prev; struct dep_stack* next; } ;


 struct dep_stack* check_top ;
 int memset (struct dep_stack*,int ,int) ;

__attribute__((used)) static void dep_stack_insert(struct dep_stack *stack, struct symbol *sym)
{
 memset(stack, 0, sizeof(*stack));
 if (check_top)
  check_top->next = stack;
 stack->prev = check_top;
 stack->sym = sym;
 check_top = stack;
}
