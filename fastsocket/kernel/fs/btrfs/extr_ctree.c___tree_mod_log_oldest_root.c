
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ logical; } ;
struct tree_mod_elem {scalar_t__ op; TYPE_1__ old_root; } ;
struct btrfs_root {TYPE_2__* node; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ start; } ;


 int BUG_ON (int) ;
 scalar_t__ MOD_LOG_ROOT_REPLACE ;
 struct tree_mod_elem* tree_mod_log_search_oldest (struct btrfs_fs_info*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct tree_mod_elem *
__tree_mod_log_oldest_root(struct btrfs_fs_info *fs_info,
      struct btrfs_root *root, u64 time_seq)
{
 struct tree_mod_elem *tm;
 struct tree_mod_elem *found = ((void*)0);
 u64 root_logical = root->node->start;
 int looped = 0;

 if (!time_seq)
  return 0;






 while (1) {
  tm = tree_mod_log_search_oldest(fs_info, root_logical,
      time_seq);
  if (!looped && !tm)
   return 0;





  if (!tm)
   break;






  if (tm->op != MOD_LOG_ROOT_REPLACE)
   break;

  found = tm;
  root_logical = tm->old_root.logical;
  BUG_ON(root_logical == root->node->start);
  looped = 1;
 }


 if (!found)
  found = tm;

 return found;
}
