
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int type; } ;


 int assert (int ) ;
 char* strchr (int ,char) ;
 int substitute_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
pr_pointer_type (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  assert (info->stack != ((void*)0));

  s = strchr (info->stack->type, '|');
  if (s != ((void*)0) && s[1] == '[')
    return substitute_type (info, "(*|)");
  return substitute_type (info, "*|");
}
