
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {struct die_info* sibling; struct die_info* child; } ;


 int dump_die (struct die_info*) ;

__attribute__((used)) static void
dump_die_list (struct die_info *die)
{
  while (die)
    {
      dump_die (die);
      if (die->child != ((void*)0))
 dump_die_list (die->child);
      if (die->sibling != ((void*)0))
 dump_die_list (die->sibling);
    }
}
