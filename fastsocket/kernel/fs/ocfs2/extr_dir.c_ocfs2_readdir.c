
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int f_pos; int f_version; int f_vfsmnt; TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int ENOENT ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int mlog_entry (char*,unsigned long long) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_dir_foreach_blk (struct inode*,int *,int *,void*,int ,int *) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_lock_atime (struct inode*,int ,int*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;

int ocfs2_readdir(struct file * filp, void * dirent, filldir_t filldir)
{
 int error = 0;
 struct inode *inode = filp->f_path.dentry->d_inode;
 int lock_level = 0;

 mlog_entry("dirino=%llu\n",
     (unsigned long long)OCFS2_I(inode)->ip_blkno);

 error = ocfs2_inode_lock_atime(inode, filp->f_vfsmnt, &lock_level);
 if (lock_level && error >= 0) {



  ocfs2_inode_unlock(inode, 1);
  lock_level = 0;
  error = ocfs2_inode_lock(inode, ((void*)0), 0);
 }
 if (error < 0) {
  if (error != -ENOENT)
   mlog_errno(error);

  goto bail_nolock;
 }

 error = ocfs2_dir_foreach_blk(inode, &filp->f_version, &filp->f_pos,
          dirent, filldir, ((void*)0));

 ocfs2_inode_unlock(inode, lock_level);

bail_nolock:
 mlog_exit(error);

 return error;
}
