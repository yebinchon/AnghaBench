
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file_stack_entry {struct file_stack_entry* next; TYPE_1__* value; } ;
struct TYPE_3__ {int tweaking; } ;
typedef TYPE_1__ file ;


 struct file_stack_entry* file_stack ;
 int file_stack_obstack ;
 struct file_stack_entry* obstack_alloc (int *,int) ;

__attribute__((used)) static void
file_push (file *p)
{
  struct file_stack_entry *ep;

  if (p->tweaking)
    return;

  ep = obstack_alloc
    (&file_stack_obstack, sizeof (struct file_stack_entry));
  ep->value = p;
  ep->next = file_stack;
  file_stack = ep;
  p->tweaking = 1;
}
