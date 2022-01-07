
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* methods; int * fields; } ;


 int TRUE ;
 int assert (int) ;
 int sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static bfd_boolean
stab_class_start_method (void *p, const char *name)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *m;

  assert (info->type_stack != ((void*)0) && info->type_stack->fields != ((void*)0));

  if (info->type_stack->methods == ((void*)0))
    {
      m = (char *) xmalloc (strlen (name) + 3);
      *m = '\0';
    }
  else
    {
      m = (char *) xrealloc (info->type_stack->methods,
        (strlen (info->type_stack->methods)
         + strlen (name)
         + 4));
    }

  sprintf (m + strlen (m), "%s::", name);

  info->type_stack->methods = m;

  return TRUE;
}
