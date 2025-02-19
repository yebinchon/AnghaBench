
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {char* index; char* vtable; scalar_t__ definition; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int free (char*) ;
 int sprintf (char*,char*,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_start_struct_type (void*,char const*,unsigned int,scalar_t__,unsigned int) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
stab_start_class_type (void *p, const char *tag, unsigned int id, bfd_boolean structp, unsigned int size, bfd_boolean vptr, bfd_boolean ownvptr)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *vstring;

  if (! vptr || ownvptr)
    {
      definition = FALSE;
      vstring = ((void*)0);
    }
  else
    {
      definition = info->type_stack->definition;
      vstring = stab_pop_type (info);
    }

  if (! stab_start_struct_type (p, tag, id, structp, size))
    return FALSE;

  if (vptr)
    {
      char *vtable;

      if (ownvptr)
 {
   assert (info->type_stack->index > 0);
   vtable = (char *) xmalloc (20);
   sprintf (vtable, "~%%%ld", info->type_stack->index);
 }
      else
 {
   vtable = (char *) xmalloc (strlen (vstring) + 3);
   sprintf (vtable, "~%%%s", vstring);
   free (vstring);
 }

      info->type_stack->vtable = vtable;
    }

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}
