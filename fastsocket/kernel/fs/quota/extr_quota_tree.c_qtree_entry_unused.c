
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dqi_entry_size; } ;



int qtree_entry_unused(struct qtree_mem_dqinfo *info, char *disk)
{
 int i;

 for (i = 0; i < info->dqi_entry_size; i++)
  if (disk[i])
   return 0;
 return 1;
}
