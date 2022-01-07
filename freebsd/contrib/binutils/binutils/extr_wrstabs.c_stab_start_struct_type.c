
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {char* fields; } ;


 int DEBUG_KIND_ILLEGAL ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int sprintf (char*,char*,char,...) ;
 long stab_get_struct_index (struct stab_write_handle*,char const*,unsigned int,int ,unsigned int*) ;
 int stab_push_string (struct stab_write_handle*,char*,long,scalar_t__,unsigned int) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
stab_start_struct_type (void *p, const char *tag, unsigned int id,
   bfd_boolean structp, unsigned int size)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  long index;
  bfd_boolean definition;
  char *buf;

  buf = (char *) xmalloc (40);

  if (id == 0)
    {
      index = 0;
      *buf = '\0';
      definition = FALSE;
    }
  else
    {
      index = stab_get_struct_index (info, tag, id, DEBUG_KIND_ILLEGAL,
         &size);
      if (index < 0)
 return FALSE;
      sprintf (buf, "%ld=", index);
      definition = TRUE;
    }

  sprintf (buf + strlen (buf), "%c%u",
    structp ? 's' : 'u',
    size);

  if (! stab_push_string (info, buf, index, definition, size))
    return FALSE;

  info->type_stack->fields = (char *) xmalloc (1);
  info->type_stack->fields[0] = '\0';

  return TRUE;
}
