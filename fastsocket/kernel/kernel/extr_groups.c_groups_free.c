
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {scalar_t__* blocks; scalar_t__ small_block; int nblocks; } ;


 int free_page (unsigned long) ;
 int kfree (struct group_info*) ;

void groups_free(struct group_info *group_info)
{
 if (group_info->blocks[0] != group_info->small_block) {
  int i;
  for (i = 0; i < group_info->nblocks; i++)
   free_page((unsigned long)group_info->blocks[i]);
 }
 kfree(group_info);
}
