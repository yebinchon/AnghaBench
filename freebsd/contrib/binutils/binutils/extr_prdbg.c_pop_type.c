
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_stack {char* type; struct pr_stack* next; } ;
struct pr_handle {struct pr_stack* stack; } ;


 int assert (int ) ;
 int free (struct pr_stack*) ;

__attribute__((used)) static char *
pop_type (struct pr_handle *info)
{
  struct pr_stack *o;
  char *ret;

  assert (info->stack != ((void*)0));

  o = info->stack;
  info->stack = o->next;
  ret = o->type;
  free (o);

  return ret;
}
