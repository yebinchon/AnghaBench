
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_iget_args {scalar_t__ ino; scalar_t__ root; } ;
struct TYPE_2__ {scalar_t__ root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ btrfs_ino (struct inode*) ;

__attribute__((used)) static int btrfs_find_actor(struct inode *inode, void *opaque)
{
 struct btrfs_iget_args *args = opaque;
 return args->ino == btrfs_ino(inode) &&
  args->root == BTRFS_I(inode)->root;
}
