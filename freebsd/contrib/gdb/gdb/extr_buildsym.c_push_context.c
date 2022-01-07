
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_stack {int depth; int * name; int start_addr; int old_blocks; int * params; int * locals; } ;
typedef int CORE_ADDR ;


 struct context_stack* context_stack ;
 int context_stack_depth ;
 int context_stack_size ;
 int * local_symbols ;
 int * param_symbols ;
 int pending_blocks ;
 scalar_t__ xrealloc (char*,int) ;

struct context_stack *
push_context (int desc, CORE_ADDR valu)
{
  struct context_stack *new;

  if (context_stack_depth == context_stack_size)
    {
      context_stack_size *= 2;
      context_stack = (struct context_stack *)
 xrealloc ((char *) context_stack,
    (context_stack_size * sizeof (struct context_stack)));
    }

  new = &context_stack[context_stack_depth++];
  new->depth = desc;
  new->locals = local_symbols;
  new->params = param_symbols;
  new->old_blocks = pending_blocks;
  new->start_addr = valu;
  new->name = ((void*)0);

  local_symbols = ((void*)0);
  param_symbols = ((void*)0);

  return new;
}
