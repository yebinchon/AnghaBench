
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ bfd_target ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 TYPE_1__ const** bfd_default_vector ;
 TYPE_1__* find_target (char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

bfd_boolean
bfd_set_default_target (const char *name)
{
  const bfd_target *target;

  if (bfd_default_vector[0] != ((void*)0)
      && strcmp (name, bfd_default_vector[0]->name) == 0)
    return TRUE;

  target = find_target (name);
  if (target == ((void*)0))
    return FALSE;

  bfd_default_vector[0] = target;
  return TRUE;
}
