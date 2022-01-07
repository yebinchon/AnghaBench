
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_stack {struct pr_stack* next; int * method; int visibility; int type; } ;
struct pr_handle {struct pr_stack* stack; } ;
typedef int bfd_boolean ;


 int DEBUG_VISIBILITY_IGNORE ;
 int FALSE ;
 int TRUE ;
 int memset (struct pr_stack*,int ,int) ;
 scalar_t__ xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static bfd_boolean
push_type (struct pr_handle *info, const char *type)
{
  struct pr_stack *n;

  if (type == ((void*)0))
    return FALSE;

  n = (struct pr_stack *) xmalloc (sizeof *n);
  memset (n, 0, sizeof *n);

  n->type = xstrdup (type);
  n->visibility = DEBUG_VISIBILITY_IGNORE;
  n->method = ((void*)0);
  n->next = info->stack;
  info->stack = n;

  return TRUE;
}
