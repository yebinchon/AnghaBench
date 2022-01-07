
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int flags; } ;
struct btrfs_root_item {scalar_t__ byte_limit; scalar_t__ flags; TYPE_1__ inode; } ;


 int BTRFS_INODE_ROOT_ITEM_INIT ;
 int cpu_to_le64 (int) ;
 int le64_to_cpu (int ) ;

void btrfs_check_and_init_root_item(struct btrfs_root_item *root_item)
{
 u64 inode_flags = le64_to_cpu(root_item->inode.flags);

 if (!(inode_flags & BTRFS_INODE_ROOT_ITEM_INIT)) {
  inode_flags |= BTRFS_INODE_ROOT_ITEM_INIT;
  root_item->inode.flags = cpu_to_le64(inode_flags);
  root_item->flags = 0;
  root_item->byte_limit = 0;
 }
}
