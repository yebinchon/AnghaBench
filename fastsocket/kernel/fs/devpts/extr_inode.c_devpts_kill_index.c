
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct pts_fs_info {int allocated_ptys; } ;
struct inode {int dummy; } ;


 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 int allocated_ptys_lock ;
 int ida_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct super_block* pts_sb_from_inode (struct inode*) ;

void devpts_kill_index(struct inode *ptmx_inode, int idx)
{
 struct super_block *sb = pts_sb_from_inode(ptmx_inode);
 struct pts_fs_info *fsi = DEVPTS_SB(sb);

 mutex_lock(&allocated_ptys_lock);
 ida_remove(&fsi->allocated_ptys, idx);
 mutex_unlock(&allocated_ptys_lock);
}
