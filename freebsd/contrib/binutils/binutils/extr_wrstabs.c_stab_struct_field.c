
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; int abfd; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef unsigned int bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {unsigned int size; char* fields; scalar_t__ definition; } ;





 scalar_t__ TRUE ;
 int _ (char*) ;
 int abort () ;
 int assert (int ) ;
 int bfd_get_filename (int ) ;
 int free (char*) ;
 int non_fatal (int ,int ,char const*) ;
 int sprintf (char*,char*,char*,char const*,char const*,char*,long,long) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_struct_field (void *p, const char *name, bfd_vma bitpos,
     bfd_vma bitsize, enum debug_visibility visibility)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  unsigned int size;
  char *s, *n;
  const char *vis;

  definition = info->type_stack->definition;
  size = info->type_stack->size;
  s = stab_pop_type (info);




  assert (info->type_stack->fields != ((void*)0));
  n = (char *) xmalloc (strlen (info->type_stack->fields)
   + strlen (name)
   + strlen (s)
   + 50);

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

  if (bitsize == 0)
    {
      bitsize = size * 8;
      if (bitsize == 0)
 non_fatal (_("%s: warning: unknown size for field `%s' in struct"),
     bfd_get_filename (info->abfd), name);
    }

  sprintf (n, "%s%s:%s%s,%ld,%ld;", info->type_stack->fields, name, vis, s,
    (long) bitpos, (long) bitsize);

  free (info->type_stack->fields);
  info->type_stack->fields = n;

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}
