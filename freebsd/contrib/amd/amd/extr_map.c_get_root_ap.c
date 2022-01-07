
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ am_parent; } ;
typedef TYPE_1__ am_node ;


 TYPE_1__* find_ap (char*) ;
 scalar_t__ root_node ;

__attribute__((used)) static am_node *
get_root_ap(char *dir)
{
  am_node *mp = find_ap(dir);

  if (mp && mp->am_parent == root_node)
    return mp;

  return 0;
}
