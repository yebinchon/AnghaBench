
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int ngroups; int nblocks; int ** blocks; int * small_block; int usage; } ;
typedef int gid_t ;


 int GFP_USER ;
 int NGROUPS_PER_BLOCK ;
 int NGROUPS_SMALL ;
 scalar_t__ __get_free_page (int ) ;
 int atomic_set (int *,int) ;
 int free_page (unsigned long) ;
 int kfree (struct group_info*) ;
 struct group_info* kmalloc (int,int ) ;

struct group_info *groups_alloc(int gidsetsize)
{
 struct group_info *group_info;
 int nblocks;
 int i;

 nblocks = (gidsetsize + NGROUPS_PER_BLOCK - 1) / NGROUPS_PER_BLOCK;

 nblocks = nblocks ? : 1;
 group_info = kmalloc(sizeof(*group_info) + nblocks*sizeof(gid_t *), GFP_USER);
 if (!group_info)
  return ((void*)0);
 group_info->ngroups = gidsetsize;
 group_info->nblocks = nblocks;
 atomic_set(&group_info->usage, 1);

 if (gidsetsize <= NGROUPS_SMALL)
  group_info->blocks[0] = group_info->small_block;
 else {
  for (i = 0; i < nblocks; i++) {
   gid_t *b;
   b = (void *)__get_free_page(GFP_USER);
   if (!b)
    goto out_undo_partial_alloc;
   group_info->blocks[i] = b;
  }
 }
 return group_info;

out_undo_partial_alloc:
 while (--i >= 0) {
  free_page((unsigned long)group_info->blocks[i]);
 }
 kfree(group_info);
 return ((void*)0);
}
