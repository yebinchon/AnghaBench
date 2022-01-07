
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {struct direntry_uarea* vi_uarea; } ;
struct direntry_uarea {int entry_count; } ;



__attribute__((used)) static int direntry_unit_num(struct virtual_item *vi)
{
 struct direntry_uarea *dir_u = vi->vi_uarea;

 return dir_u->entry_count;
}
