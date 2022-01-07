
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* fields; long index; unsigned int size; int definition; } ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int free (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,unsigned int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_end_struct_type (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  long index;
  unsigned int size;
  char *fields, *first, *buf;

  assert (info->type_stack != ((void*)0) && info->type_stack->fields != ((void*)0));

  definition = info->type_stack->definition;
  index = info->type_stack->index;
  size = info->type_stack->size;
  fields = info->type_stack->fields;
  first = stab_pop_type (info);

  buf = (char *) xmalloc (strlen (first) + strlen (fields) + 2);
  sprintf (buf, "%s%s;", first, fields);
  free (first);
  free (fields);

  if (! stab_push_string (info, buf, index, definition, size))
    return FALSE;

  free (buf);

  return TRUE;
}
