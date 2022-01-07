
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct pts_fs_info {int allocated_ptys; } ;
struct inode {int dummy; } ;


 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int allocated_ptys_lock ;
 int ida_get_new (int *,int*) ;
 int ida_pre_get (int *,int ) ;
 int ida_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct super_block* pts_sb_from_inode (struct inode*) ;
 int pty_limit ;

int devpts_new_index(struct inode *ptmx_inode)
{
 struct super_block *sb = pts_sb_from_inode(ptmx_inode);
 struct pts_fs_info *fsi = DEVPTS_SB(sb);
 int index;
 int ida_ret;

retry:
 if (!ida_pre_get(&fsi->allocated_ptys, GFP_KERNEL))
  return -ENOMEM;

 mutex_lock(&allocated_ptys_lock);
 ida_ret = ida_get_new(&fsi->allocated_ptys, &index);
 if (ida_ret < 0) {
  mutex_unlock(&allocated_ptys_lock);
  if (ida_ret == -EAGAIN)
   goto retry;
  return -EIO;
 }

 if (index >= pty_limit) {
  ida_remove(&fsi->allocated_ptys, index);
  mutex_unlock(&allocated_ptys_lock);
  return -EIO;
 }
 mutex_unlock(&allocated_ptys_lock);
 return index;
}
