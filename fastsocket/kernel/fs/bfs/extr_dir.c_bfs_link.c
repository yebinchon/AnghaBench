
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_count; int i_ctime; int i_ino; int i_sb; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct bfs_sb_info {int bfs_lock; } ;


 struct bfs_sb_info* BFS_SB (int ) ;
 int CURRENT_TIME_SEC ;
 int atomic_inc (int *) ;
 int bfs_add_entry (struct inode*,int ,int ,int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inc_nlink (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bfs_link(struct dentry *old, struct inode *dir,
      struct dentry *new)
{
 struct inode *inode = old->d_inode;
 struct bfs_sb_info *info = BFS_SB(inode->i_sb);
 int err;

 mutex_lock(&info->bfs_lock);
 err = bfs_add_entry(dir, new->d_name.name, new->d_name.len,
       inode->i_ino);
 if (err) {
  mutex_unlock(&info->bfs_lock);
  return err;
 }
 inc_nlink(inode);
 inode->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(inode);
 atomic_inc(&inode->i_count);
 d_instantiate(new, inode);
 mutex_unlock(&info->bfs_lock);
 return 0;
}
