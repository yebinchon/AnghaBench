
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {long type_index; TYPE_1__* type_stack; } ;
typedef scalar_t__ bfd_signed_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {int definition; unsigned int size; } ;


 int FALSE ;
 int TRUE ;
 int free (char*) ;
 int sprintf (char*,char*,...) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int,unsigned int) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
stab_array_type (void *p, bfd_signed_vma low, bfd_signed_vma high,
   bfd_boolean stringp)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  unsigned int element_size;
  char *range, *element, *buf;
  long index;
  unsigned int size;

  definition = info->type_stack->definition;
  range = stab_pop_type (info);

  definition = definition || info->type_stack->definition;
  element_size = info->type_stack->size;
  element = stab_pop_type (info);

  buf = (char *) xmalloc (strlen (range) + strlen (element) + 100);

  if (! stringp)
    {
      index = 0;
      *buf = '\0';
    }
  else
    {


      index = info->type_index;
      ++info->type_index;
      definition = TRUE;
      sprintf (buf, "%ld=@S;", index);
    }

  sprintf (buf + strlen (buf), "ar%s;%ld;%ld;%s",
    range, (long) low, (long) high, element);
  free (range);
  free (element);

  if (high < low)
    size = 0;
  else
    size = element_size * ((high - low) + 1);
  if (! stab_push_string (info, buf, index, definition, size))
    return FALSE;

  free (buf);

  return TRUE;
}
