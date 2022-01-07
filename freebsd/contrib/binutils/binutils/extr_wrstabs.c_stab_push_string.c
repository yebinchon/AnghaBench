
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {struct stab_type_stack* type_stack; } ;
struct stab_type_stack {long index; unsigned int size; struct stab_type_stack* next; int * vtable; int * methods; int * baseclasses; int * fields; int definition; int string; } ;
typedef int bfd_boolean ;


 int TRUE ;
 scalar_t__ xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static bfd_boolean
stab_push_string (struct stab_write_handle *info, const char *string,
    long index, bfd_boolean definition, unsigned int size)
{
  struct stab_type_stack *s;

  s = (struct stab_type_stack *) xmalloc (sizeof *s);
  s->string = xstrdup (string);
  s->index = index;
  s->definition = definition;
  s->size = size;

  s->fields = ((void*)0);
  s->baseclasses = ((void*)0);
  s->methods = ((void*)0);
  s->vtable = ((void*)0);

  s->next = info->type_stack;
  info->type_stack = s;

  return TRUE;
}
