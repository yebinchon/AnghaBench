
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_count; } ;
struct delayed_iput {int list; struct inode* inode; } ;
struct btrfs_fs_info {int delayed_iput_lock; int delayed_iputs; } ;
struct TYPE_4__ {TYPE_1__* root; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int GFP_NOFS ;
 int __GFP_NOFAIL ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 struct delayed_iput* kmalloc (int,int) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_add_delayed_iput(struct inode *inode)
{
 struct btrfs_fs_info *fs_info = BTRFS_I(inode)->root->fs_info;
 struct delayed_iput *delayed;

 if (atomic_add_unless(&inode->i_count, -1, 1))
  return;

 delayed = kmalloc(sizeof(*delayed), GFP_NOFS | __GFP_NOFAIL);
 delayed->inode = inode;

 spin_lock(&fs_info->delayed_iput_lock);
 list_add_tail(&delayed->list, &fs_info->delayed_iputs);
 spin_unlock(&fs_info->delayed_iput_lock);
}
