
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {char** baseclasses; scalar_t__ definition; int * fields; } ;





 scalar_t__ TRUE ;
 int abort () ;
 int assert (int) ;
 int free (char*) ;
 int sprintf (char*,char*,long,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;
 scalar_t__ xrealloc (char**,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_class_baseclass (void *p, bfd_vma bitpos, bfd_boolean virtual,
        enum debug_visibility visibility)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *s;
  char *buf;
  unsigned int c;
  char **baseclasses;

  definition = info->type_stack->definition;
  s = stab_pop_type (info);



  buf = (char *) xmalloc (strlen (s) + 25);
  buf[0] = virtual ? '1' : '0';
  switch (visibility)
    {
    default:
      abort ();

    case 130:
      buf[1] = '0';
      break;

    case 129:
      buf[1] = '1';
      break;

    case 128:
      buf[1] = '2';
      break;
    }

  sprintf (buf + 2, "%ld,%s;", (long) bitpos, s);
  free (s);



  assert (info->type_stack != ((void*)0) && info->type_stack->fields != ((void*)0));

  if (info->type_stack->baseclasses == ((void*)0))
    c = 0;
  else
    {
      c = 0;
      while (info->type_stack->baseclasses[c] != ((void*)0))
 ++c;
    }

  baseclasses = (char **) xrealloc (info->type_stack->baseclasses,
        (c + 2) * sizeof (*baseclasses));
  baseclasses[c] = buf;
  baseclasses[c + 1] = ((void*)0);

  info->type_stack->baseclasses = baseclasses;

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}
