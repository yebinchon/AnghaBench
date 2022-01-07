
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct dentry {int d_name; TYPE_2__* d_inode; } ;
typedef int btree_key ;
struct TYPE_4__ {int i_ino; } ;
struct TYPE_3__ {int cat_key; } ;


 TYPE_1__* HFS_I (TYPE_2__*) ;
 int hfs_cat_build_key (int ,int *,int ,int *) ;
 int hfs_cat_move (int ,struct inode*,int *,struct inode*,int *) ;
 int hfs_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int hfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry)
{
 int res;


 if (new_dentry->d_inode) {
  res = hfs_unlink(new_dir, new_dentry);
  if (res)
   return res;
 }

 res = hfs_cat_move(old_dentry->d_inode->i_ino,
      old_dir, &old_dentry->d_name,
      new_dir, &new_dentry->d_name);
 if (!res)
  hfs_cat_build_key(old_dir->i_sb,
      (btree_key *)&HFS_I(old_dentry->d_inode)->cat_key,
      new_dir->i_ino, &new_dentry->d_name);
 return res;
}
