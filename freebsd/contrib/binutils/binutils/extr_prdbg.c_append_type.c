
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char const* type; } ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int strcpy (char const*,char const*) ;
 unsigned int strlen (char const*) ;
 scalar_t__ xrealloc (char*,unsigned int) ;

__attribute__((used)) static bfd_boolean
append_type (struct pr_handle *info, const char *s)
{
  unsigned int len;

  if (s == ((void*)0))
    return FALSE;

  assert (info->stack != ((void*)0));

  len = strlen (info->stack->type);
  info->stack->type = (char *) xrealloc (info->stack->type,
      len + strlen (s) + 1);
  strcpy (info->stack->type + len, s);

  return TRUE;
}
