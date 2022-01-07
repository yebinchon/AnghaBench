
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ctime; int i_mode; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;


 int CURRENT_TIME_SEC ;
 int ENOENT ;
 int ENOTEMPTY ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int omfs_add_link (struct dentry*,struct inode*) ;
 int omfs_dir_is_empty (struct inode*) ;
 struct buffer_head* omfs_find_entry (struct inode*,int ,int ) ;
 int omfs_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int omfs_rename(struct inode *old_dir, struct dentry *old_dentry,
  struct inode *new_dir, struct dentry *new_dentry)
{
 struct inode *new_inode = new_dentry->d_inode;
 struct inode *old_inode = old_dentry->d_inode;
 struct buffer_head *bh;
 int is_dir;
 int err;

 is_dir = S_ISDIR(old_inode->i_mode);

 if (new_inode) {

  err = -ENOTEMPTY;
  if (is_dir && !omfs_dir_is_empty(new_inode))
   goto out;

  err = -ENOENT;
  bh = omfs_find_entry(new_dir, new_dentry->d_name.name,
   new_dentry->d_name.len);
  if (IS_ERR(bh))
   goto out;
  brelse(bh);

  err = omfs_unlink(new_dir, new_dentry);
  if (err)
   goto out;
 }



 inode_inc_link_count(old_inode);
 err = omfs_unlink(old_dir, old_dentry);
 if (err) {
  inode_dec_link_count(old_inode);
  goto out;
 }

 err = omfs_add_link(new_dentry, old_inode);
 if (err)
  goto out;

 old_inode->i_ctime = CURRENT_TIME_SEC;
out:
 return err;
}
