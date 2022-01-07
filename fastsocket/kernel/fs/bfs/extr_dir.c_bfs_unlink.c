
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_nlink; int i_ctime; int i_mtime; TYPE_2__* i_sb; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;
struct TYPE_4__ {char* s_id; } ;


 struct bfs_sb_info* BFS_SB (TYPE_2__*) ;
 int CURRENT_TIME_SEC ;
 int ENOENT ;
 struct buffer_head* bfs_find_entry (struct inode*,int ,int ,struct bfs_dirent**) ;
 int brelse (struct buffer_head*) ;
 int inode_dec_link_count (struct inode*) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printf (char*,char*,scalar_t__,int) ;

__attribute__((used)) static int bfs_unlink(struct inode *dir, struct dentry *dentry)
{
 int error = -ENOENT;
 struct inode *inode = dentry->d_inode;
 struct buffer_head *bh;
 struct bfs_dirent *de;
 struct bfs_sb_info *info = BFS_SB(inode->i_sb);

 mutex_lock(&info->bfs_lock);
 bh = bfs_find_entry(dir, dentry->d_name.name, dentry->d_name.len, &de);
 if (!bh || (le16_to_cpu(de->ino) != inode->i_ino))
  goto out_brelse;

 if (!inode->i_nlink) {
  printf("unlinking non-existent file %s:%lu (nlink=%d)\n",
     inode->i_sb->s_id, inode->i_ino,
     inode->i_nlink);
  inode->i_nlink = 1;
 }
 de->ino = 0;
 mark_buffer_dirty_inode(bh, dir);
 dir->i_ctime = dir->i_mtime = CURRENT_TIME_SEC;
 mark_inode_dirty(dir);
 inode->i_ctime = dir->i_ctime;
 inode_dec_link_count(inode);
 error = 0;

out_brelse:
 brelse(bh);
 mutex_unlock(&info->bfs_lock);
 return error;
}
