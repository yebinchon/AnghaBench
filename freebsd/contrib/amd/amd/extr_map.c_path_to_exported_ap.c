
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int am_path; } ;
typedef TYPE_1__ am_node ;


 scalar_t__ STREQ (int ,char*) ;
 TYPE_1__* get_first_exported_ap (int*) ;
 TYPE_1__* get_next_exported_ap (int*) ;

am_node *
path_to_exported_ap(char *path)
{
  int index;
  am_node *mp;

  mp = get_first_exported_ap(&index);
  while (mp != ((void*)0)) {
    if (STREQ(mp->am_path, path))
      break;
    mp = get_next_exported_ap(&index);
  }
  return mp;
}
