
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int definition; } ;


 int FALSE ;
 int TRUE ;
 int free (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_push_string (struct stab_write_handle*,char*,int ,int,int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_offset_type (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *target, *base, *buf;

  definition = info->type_stack->definition;
  target = stab_pop_type (info);

  definition = definition || info->type_stack->definition;
  base = stab_pop_type (info);

  buf = (char *) xmalloc (strlen (target) + strlen (base) + 3);
  sprintf (buf, "@%s,%s", base, target);
  free (base);
  free (target);

  if (! stab_push_string (info, buf, 0, definition, 0))
    return FALSE;

  free (buf);

  return TRUE;
}
