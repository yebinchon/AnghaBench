
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct btrfs_iget_args {int root; int ino; } ;
struct TYPE_2__ {int root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int btrfs_set_inode_space_info (int ,struct inode*) ;

__attribute__((used)) static int btrfs_init_locked_inode(struct inode *inode, void *p)
{
 struct btrfs_iget_args *args = p;
 inode->i_ino = args->ino;
 BTRFS_I(inode)->root = args->root;
 btrfs_set_inode_space_info(args->root, inode);
 return 0;
}
