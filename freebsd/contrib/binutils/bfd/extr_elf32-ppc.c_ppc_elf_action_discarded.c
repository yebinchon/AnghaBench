
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ asection ;


 unsigned int _bfd_elf_default_action_discarded (TYPE_1__*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static unsigned int
ppc_elf_action_discarded (asection *sec)
{
  if (strcmp (".fixup", sec->name) == 0)
    return 0;

  if (strcmp (".got2", sec->name) == 0)
    return 0;

  return _bfd_elf_default_action_discarded (sec);
}
