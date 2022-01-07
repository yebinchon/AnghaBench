
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int bfs_lock; } ;
struct bfs_dirent {int ino; } ;


 scalar_t__ BFS_NAMELEN ;
 struct bfs_sb_info* BFS_SB (int ) ;
 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct buffer_head* bfs_find_entry (struct inode*,int ,scalar_t__,struct bfs_dirent**) ;
 struct inode* bfs_iget (int ,unsigned long) ;
 int brelse (struct buffer_head*) ;
 int d_add (struct dentry*,struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct dentry *bfs_lookup(struct inode *dir, struct dentry *dentry,
      struct nameidata *nd)
{
 struct inode *inode = ((void*)0);
 struct buffer_head *bh;
 struct bfs_dirent *de;
 struct bfs_sb_info *info = BFS_SB(dir->i_sb);

 if (dentry->d_name.len > BFS_NAMELEN)
  return ERR_PTR(-ENAMETOOLONG);

 mutex_lock(&info->bfs_lock);
 bh = bfs_find_entry(dir, dentry->d_name.name, dentry->d_name.len, &de);
 if (bh) {
  unsigned long ino = (unsigned long)le16_to_cpu(de->ino);
  brelse(bh);
  inode = bfs_iget(dir->i_sb, ino);
  if (IS_ERR(inode)) {
   mutex_unlock(&info->bfs_lock);
   return ERR_CAST(inode);
  }
 }
 mutex_unlock(&info->bfs_lock);
 d_add(dentry, inode);
 return ((void*)0);
}
