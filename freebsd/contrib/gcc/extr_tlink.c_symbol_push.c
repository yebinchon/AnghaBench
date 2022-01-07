
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct symbol_stack_entry {struct symbol_stack_entry* next; int * value; } ;


 struct symbol_stack_entry* obstack_alloc (int *,int) ;
 struct symbol_stack_entry* symbol_stack ;
 int symbol_stack_obstack ;

__attribute__((used)) static void
symbol_push (symbol *p)
{
  struct symbol_stack_entry *ep = obstack_alloc
    (&symbol_stack_obstack, sizeof (struct symbol_stack_entry));
  ep->value = p;
  ep->next = symbol_stack;
  symbol_stack = ep;
}
