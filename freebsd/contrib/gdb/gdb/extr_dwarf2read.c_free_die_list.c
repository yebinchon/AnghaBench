
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {struct die_info* attrs; struct die_info* sibling; struct die_info* child; } ;


 int xfree (struct die_info*) ;

__attribute__((used)) static void
free_die_list (struct die_info *dies)
{
  struct die_info *die, *next;

  die = dies;
  while (die)
    {
      if (die->child != ((void*)0))
 free_die_list (die->child);
      next = die->sibling;
      xfree (die->attrs);
      xfree (die);
      die = next;
    }
}
