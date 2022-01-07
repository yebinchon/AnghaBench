
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file_stack_entry {struct file_stack_entry* next; TYPE_1__* value; } ;
struct TYPE_3__ {scalar_t__ tweaking; } ;
typedef TYPE_1__ file ;


 struct file_stack_entry* file_stack ;
 int file_stack_obstack ;
 int obstack_free (int *,struct file_stack_entry*) ;

__attribute__((used)) static file *
file_pop (void)
{
  struct file_stack_entry *ep = file_stack;
  file *p;
  if (ep == ((void*)0))
    return ((void*)0);
  p = ep->value;
  file_stack = ep->next;
  obstack_free (&file_stack_obstack, ep);
  p->tweaking = 0;
  return p;
}
