
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; void* i_ctime; void* i_mtime; int i_sb; int i_mode; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;


 struct bfs_sb_info* BFS_SB (int ) ;
 void* CURRENT_TIME_SEC ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ S_ISDIR (int ) ;
 int bfs_add_entry (struct inode*,int ,int ,scalar_t__) ;
 struct buffer_head* bfs_find_entry (struct inode*,int ,int ,struct bfs_dirent**) ;
 int brelse (struct buffer_head*) ;
 int inode_dec_link_count (struct inode*) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bfs_rename(struct inode *old_dir, struct dentry *old_dentry,
   struct inode *new_dir, struct dentry *new_dentry)
{
 struct inode *old_inode, *new_inode;
 struct buffer_head *old_bh, *new_bh;
 struct bfs_dirent *old_de, *new_de;
 struct bfs_sb_info *info;
 int error = -ENOENT;

 old_bh = new_bh = ((void*)0);
 old_inode = old_dentry->d_inode;
 if (S_ISDIR(old_inode->i_mode))
  return -EINVAL;

 info = BFS_SB(old_inode->i_sb);

 mutex_lock(&info->bfs_lock);
 old_bh = bfs_find_entry(old_dir,
    old_dentry->d_name.name,
    old_dentry->d_name.len, &old_de);

 if (!old_bh || (le16_to_cpu(old_de->ino) != old_inode->i_ino))
  goto end_rename;

 error = -EPERM;
 new_inode = new_dentry->d_inode;
 new_bh = bfs_find_entry(new_dir,
    new_dentry->d_name.name,
    new_dentry->d_name.len, &new_de);

 if (new_bh && !new_inode) {
  brelse(new_bh);
  new_bh = ((void*)0);
 }
 if (!new_bh) {
  error = bfs_add_entry(new_dir,
     new_dentry->d_name.name,
     new_dentry->d_name.len,
     old_inode->i_ino);
  if (error)
   goto end_rename;
 }
 old_de->ino = 0;
 old_dir->i_ctime = old_dir->i_mtime = CURRENT_TIME_SEC;
 mark_inode_dirty(old_dir);
 if (new_inode) {
  new_inode->i_ctime = CURRENT_TIME_SEC;
  inode_dec_link_count(new_inode);
 }
 mark_buffer_dirty_inode(old_bh, old_dir);
 error = 0;

end_rename:
 mutex_unlock(&info->bfs_lock);
 brelse(old_bh);
 brelse(new_bh);
 return error;
}
