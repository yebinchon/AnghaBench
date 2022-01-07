
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int name; } ;
typedef TYPE_1__ asection ;


 unsigned int COMPLAIN ;
 unsigned int PRETEND ;
 int SEC_DEBUGGING ;
 scalar_t__ strcmp (char*,int ) ;

unsigned int
_bfd_elf_default_action_discarded (asection *sec)
{
  if (sec->flags & SEC_DEBUGGING)
    return PRETEND;

  if (strcmp (".eh_frame", sec->name) == 0)
    return 0;

  if (strcmp (".gcc_except_table", sec->name) == 0)
    return 0;

  return COMPLAIN | PRETEND;
}
