
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {long type_index; TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int definition; } ;


 int FALSE ;
 int TRUE ;
 int free (char*) ;
 int sprintf (char*,char*,...) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,int ) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
stab_set_type (void *p, bfd_boolean bitstringp)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *s, *buf;
  long index;

  definition = info->type_stack->definition;

  s = stab_pop_type (info);
  buf = (char *) xmalloc (strlen (s) + 30);

  if (! bitstringp)
    {
      *buf = '\0';
      index = 0;
    }
  else
    {


      index = info->type_index;
      ++info->type_index;
      definition = TRUE;
      sprintf (buf, "%ld=@S;", index);
    }

  sprintf (buf + strlen (buf), "S%s", s);
  free (s);

  if (! stab_push_string (info, buf, index, definition, 0))
    return FALSE;

  free (buf);

  return TRUE;
}
