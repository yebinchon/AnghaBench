
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int name; } ;
typedef TYPE_1__ asection ;


 int SEC_RELOC ;
 unsigned int _bfd_elf_default_action_discarded (TYPE_1__*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static unsigned int
ppc64_elf_action_discarded (asection *sec)
{
  if (strcmp (".opd", sec->name) == 0)
    return 0;

  if (strcmp (".toc", sec->name) == 0)
    return 0;

  if (strcmp (".toc1", sec->name) == 0)
    return 0;

  if (sec->flags & SEC_RELOC)
    return 0;

  return _bfd_elf_default_action_discarded (sec);
}
