
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {char const* fields; scalar_t__ definition; } ;





 scalar_t__ TRUE ;
 int abort () ;
 int assert (int ) ;
 int free (char*) ;
 int sprintf (char*,char*,char const*,char const*,char const*,char*,char const*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_class_static_member (void *p, const char *name, const char *physname,
     enum debug_visibility visibility)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *s, *n;
  const char *vis;

  definition = info->type_stack->definition;
  s = stab_pop_type (info);




  assert (info->type_stack->fields != ((void*)0));
  n = (char *) xmalloc (strlen (info->type_stack->fields)
   + strlen (name)
   + strlen (s)
   + strlen (physname)
   + 10);

  switch (visibility)
    {
    default:
      abort ();

    case 128:
      vis = "";
      break;

    case 130:
      vis = "/0";
      break;

    case 129:
      vis = "/1";
      break;
    }

  sprintf (n, "%s%s:%s%s:%s;", info->type_stack->fields, name, vis, s,
    physname);

  free (info->type_stack->fields);
  info->type_stack->fields = n;

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}
