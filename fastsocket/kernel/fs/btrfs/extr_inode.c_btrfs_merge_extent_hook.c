
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct extent_state {int state; } ;
struct TYPE_2__ {int lock; int outstanding_extents; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int EXTENT_DELALLOC ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_merge_extent_hook(struct inode *inode,
        struct extent_state *new,
        struct extent_state *other)
{

 if (!(other->state & EXTENT_DELALLOC))
  return;

 spin_lock(&BTRFS_I(inode)->lock);
 BTRFS_I(inode)->outstanding_extents--;
 spin_unlock(&BTRFS_I(inode)->lock);
}
