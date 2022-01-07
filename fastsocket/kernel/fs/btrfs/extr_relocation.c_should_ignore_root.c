
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_root {TYPE_2__* fs_info; int root_item; struct btrfs_root* reloc_root; int ref_cows; } ;
struct TYPE_4__ {TYPE_1__* running_transaction; } ;
struct TYPE_3__ {int transid; } ;


 int btrfs_root_last_snapshot (int *) ;

__attribute__((used)) static int should_ignore_root(struct btrfs_root *root)
{
 struct btrfs_root *reloc_root;

 if (!root->ref_cows)
  return 0;

 reloc_root = root->reloc_root;
 if (!reloc_root)
  return 0;

 if (btrfs_root_last_snapshot(&reloc_root->root_item) ==
     root->fs_info->running_transaction->transid - 1)
  return 0;






 return 1;
}
