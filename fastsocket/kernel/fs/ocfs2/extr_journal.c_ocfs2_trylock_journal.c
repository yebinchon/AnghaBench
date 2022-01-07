
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct inode {int dummy; } ;


 int EACCES ;
 int EAGAIN ;
 int JOURNAL_SYSTEM_INODE ;
 int ML_ERROR ;
 int OCFS2_META_LOCK_NOQUEUE ;
 int OCFS2_META_LOCK_RECOVERY ;
 int SET_INODE_JOURNAL (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mlog (int ,char*) ;
 int mlog_errno (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int) ;
 int ocfs2_inode_lock_full (struct inode*,int *,int,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;

__attribute__((used)) static int ocfs2_trylock_journal(struct ocfs2_super *osb,
     int slot_num)
{
 int status, flags;
 struct inode *inode = ((void*)0);

 inode = ocfs2_get_system_file_inode(osb, JOURNAL_SYSTEM_INODE,
         slot_num);
 if (inode == ((void*)0)) {
  mlog(ML_ERROR, "access error\n");
  status = -EACCES;
  goto bail;
 }
 if (is_bad_inode(inode)) {
  mlog(ML_ERROR, "access error (bad inode)\n");
  iput(inode);
  inode = ((void*)0);
  status = -EACCES;
  goto bail;
 }
 SET_INODE_JOURNAL(inode);

 flags = OCFS2_META_LOCK_RECOVERY | OCFS2_META_LOCK_NOQUEUE;
 status = ocfs2_inode_lock_full(inode, ((void*)0), 1, flags);
 if (status < 0) {
  if (status != -EAGAIN)
   mlog_errno(status);
  goto bail;
 }

 ocfs2_inode_unlock(inode, 1);
bail:
 if (inode)
  iput(inode);

 return status;
}
