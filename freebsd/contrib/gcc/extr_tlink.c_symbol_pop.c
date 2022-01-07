
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct symbol_stack_entry {struct symbol_stack_entry* next; int * value; } ;


 int obstack_free (int *,struct symbol_stack_entry*) ;
 struct symbol_stack_entry* symbol_stack ;
 int symbol_stack_obstack ;

__attribute__((used)) static symbol *
symbol_pop (void)
{
  struct symbol_stack_entry *ep = symbol_stack;
  symbol *p;
  if (ep == ((void*)0))
    return ((void*)0);
  p = ep->value;
  symbol_stack = ep->next;
  obstack_free (&symbol_stack_obstack, ep);
  return p;
}
