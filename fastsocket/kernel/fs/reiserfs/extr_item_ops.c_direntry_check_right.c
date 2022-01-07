
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {struct direntry_uarea* vi_uarea; } ;
struct direntry_uarea {int entry_count; int* entry_sizes; int flags; } ;


 int BUG_ON (int) ;
 int DIRENTRY_VI_FIRST_DIRENTRY_ITEM ;

__attribute__((used)) static int direntry_check_right(struct virtual_item *vi, int free)
{
 int i;
 int entries = 0;
 struct direntry_uarea *dir_u = vi->vi_uarea;

 for (i = dir_u->entry_count - 1; i >= 0; i--) {
  if (dir_u->entry_sizes[i] > free)

   break;

  free -= dir_u->entry_sizes[i];
  entries++;
 }
 BUG_ON(entries == dir_u->entry_count);


 if ((dir_u->flags & DIRENTRY_VI_FIRST_DIRENTRY_ITEM)
     && entries > dir_u->entry_count - 2)
  entries = dir_u->entry_count - 2;

 return entries ? : -1;
}
