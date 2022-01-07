
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_4__ {int is_directive; unsigned int directive_index; } ;
typedef TYPE_1__ cpp_hashnode ;
struct TYPE_5__ {int length; int name; } ;


 scalar_t__ N_DIRECTIVES ;
 TYPE_1__* cpp_lookup (int *,int ,int ) ;
 TYPE_2__* dtable ;

void
_cpp_init_directives (cpp_reader *pfile)
{
  unsigned int i;
  cpp_hashnode *node;

  for (i = 0; i < (unsigned int) N_DIRECTIVES; i++)
    {
      node = cpp_lookup (pfile, dtable[i].name, dtable[i].length);
      node->is_directive = 1;
      node->directive_index = i;
    }
}
