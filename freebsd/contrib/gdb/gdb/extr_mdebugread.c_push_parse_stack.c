
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_stack {struct parse_stack* next; struct parse_stack* prev; } ;


 struct parse_stack* top_stack ;
 scalar_t__ xzalloc (int) ;

__attribute__((used)) static void
push_parse_stack (void)
{
  struct parse_stack *new;


  if (top_stack && top_stack->prev)
    new = top_stack->prev;
  else
    new = (struct parse_stack *) xzalloc (sizeof (struct parse_stack));

  if (top_stack)
    {
      struct parse_stack *prev = new->prev;

      *new = *top_stack;
      top_stack->prev = new;
      new->prev = prev;
      new->next = top_stack;
    }
  top_stack = new;
}
