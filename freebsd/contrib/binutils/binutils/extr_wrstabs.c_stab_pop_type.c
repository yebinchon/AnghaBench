
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {struct stab_type_stack* type_stack; } ;
struct stab_type_stack {char* string; struct stab_type_stack* next; } ;


 int assert (int ) ;
 int free (struct stab_type_stack*) ;

__attribute__((used)) static char *
stab_pop_type (struct stab_write_handle *info)
{
  struct stab_type_stack *s;
  char *ret;

  s = info->type_stack;
  assert (s != ((void*)0));

  info->type_stack = s->next;

  ret = s->string;

  free (s);

  return ret;
}
