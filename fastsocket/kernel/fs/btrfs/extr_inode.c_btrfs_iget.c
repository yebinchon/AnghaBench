
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_state; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {int objectid; } ;
struct TYPE_2__ {int location; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int I_NEW ;
 struct inode* btrfs_iget_locked (struct super_block*,int ,struct btrfs_root*) ;
 int btrfs_read_locked_inode (struct inode*) ;
 int inode_tree_add (struct inode*) ;
 int iput (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int memcpy (int *,struct btrfs_key*,int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *btrfs_iget(struct super_block *s, struct btrfs_key *location,
    struct btrfs_root *root, int *new)
{
 struct inode *inode;

 inode = btrfs_iget_locked(s, location->objectid, root);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 if (inode->i_state & I_NEW) {
  BTRFS_I(inode)->root = root;
  memcpy(&BTRFS_I(inode)->location, location, sizeof(*location));
  btrfs_read_locked_inode(inode);
  if (!is_bad_inode(inode)) {
   inode_tree_add(inode);
   unlock_new_inode(inode);
   if (new)
    *new = 1;
  } else {
   unlock_new_inode(inode);
   iput(inode);
   inode = ERR_PTR(-ESTALE);
  }
 }

 return inode;
}
