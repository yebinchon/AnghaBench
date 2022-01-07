
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int am_flags; } ;
typedef TYPE_1__ am_node ;


 int AMF_ROOT ;
 TYPE_1__** exported_ap ;
 TYPE_1__* find_ap_recursive (char*,TYPE_1__*) ;
 int last_used_map ;

am_node *
find_ap(char *dir)
{
  int i;

  for (i = last_used_map; i >= 0; --i) {
    am_node *mp = exported_ap[i];
    if (mp && (mp->am_flags & AMF_ROOT)) {
      mp = find_ap_recursive(dir, exported_ap[i]);
      if (mp) {
 return mp;
      }
    }
  }

  return 0;
}
