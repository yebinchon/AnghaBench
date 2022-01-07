
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {int definition; char* methods; } ;





 int TRUE ;
 int abort () ;
 int assert (int) ;
 int free (char*) ;
 int sprintf (char*,char*,...) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int strlen (char const*) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static bfd_boolean
stab_class_method_var (struct stab_write_handle *info, const char *physname,
         enum debug_visibility visibility,
         bfd_boolean staticp, bfd_boolean constp,
         bfd_boolean volatilep, bfd_vma voffset,
         bfd_boolean contextp)
{
  bfd_boolean definition;
  char *type;
  char *context = ((void*)0);
  char visc, qualc, typec;

  definition = info->type_stack->definition;
  type = stab_pop_type (info);

  if (contextp)
    {
      definition = definition || info->type_stack->definition;
      context = stab_pop_type (info);
    }

  assert (info->type_stack != ((void*)0) && info->type_stack->methods != ((void*)0));

  switch (visibility)
    {
    default:
      abort ();

    case 130:
      visc = '0';
      break;

    case 129:
      visc = '1';
      break;

    case 128:
      visc = '2';
      break;
    }

  if (constp)
    {
      if (volatilep)
 qualc = 'D';
      else
 qualc = 'B';
    }
  else
    {
      if (volatilep)
 qualc = 'C';
      else
 qualc = 'A';
    }

  if (staticp)
    typec = '?';
  else if (! contextp)
    typec = '.';
  else
    typec = '*';

  info->type_stack->methods =
    (char *) xrealloc (info->type_stack->methods,
         (strlen (info->type_stack->methods)
   + strlen (type)
   + strlen (physname)
   + (contextp ? strlen (context) : 0)
   + 40));

  sprintf (info->type_stack->methods + strlen (info->type_stack->methods),
    "%s:%s;%c%c%c", type, physname, visc, qualc, typec);
  free (type);

  if (contextp)
    {
      sprintf (info->type_stack->methods + strlen (info->type_stack->methods),
        "%ld;%s;", (long) voffset, context);
      free (context);
    }

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}
