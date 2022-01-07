
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {int indent; TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* type; } ;


 int TRUE ;
 int assert (int) ;
 int strlen (char*) ;

__attribute__((used)) static bfd_boolean
pr_end_struct_type (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  assert (info->stack != ((void*)0));
  assert (info->indent >= 2);

  info->indent -= 2;


  s = info->stack->type + strlen (info->stack->type) - 2;
  assert (s[0] == ' ' && s[1] == ' ' && s[2] == '\0');

  *s++ = '}';
  *s = '\0';

  return TRUE;
}
