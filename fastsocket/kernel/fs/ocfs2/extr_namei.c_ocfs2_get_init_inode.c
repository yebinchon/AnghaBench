
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_mode; int i_gid; int i_uid; int i_sb; } ;


 int ML_ERROR ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int current_fsgid () ;
 int current_fsuid () ;
 int mlog (int ,char*) ;
 struct inode* new_inode (int ) ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static struct inode *ocfs2_get_init_inode(struct inode *dir, int mode)
{
 struct inode *inode;

 inode = new_inode(dir->i_sb);
 if (!inode) {
  mlog(ML_ERROR, "new_inode failed!\n");
  return ((void*)0);
 }




 if (S_ISDIR(mode))
  inode->i_nlink = 2;
 else
  inode->i_nlink = 1;
 inode->i_uid = current_fsuid();
 if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  if (S_ISDIR(mode))
   mode |= S_ISGID;
 } else
  inode->i_gid = current_fsgid();
 inode->i_mode = mode;
 vfs_dq_init(inode);
 return inode;
}
