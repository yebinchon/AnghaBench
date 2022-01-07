
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int sigset_t ;
struct TYPE_2__ {int ip_flags; int ip_blkno; } ;


 int EDEADLK ;
 int ENOENT ;
 int ML_ERROR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 int OCFS2_SB (int ) ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int brelse (struct buffer_head*) ;
 int clear_inode (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,int ) ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int ocfs2_cleanup_delete_inode (struct inode*,int) ;
 int ocfs2_inode_is_valid_to_delete (struct inode*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_nfs_sync_lock (int ,int ) ;
 int ocfs2_nfs_sync_unlock (int ,int ) ;
 int ocfs2_query_inode_wipe (struct inode*,struct buffer_head*,int*) ;
 int ocfs2_wipe_inode (struct inode*,struct buffer_head*) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void ocfs2_delete_inode(struct inode *inode)
{
 int wipe, status;
 sigset_t blocked, oldset;
 struct buffer_head *di_bh = ((void*)0);

 mlog_entry("(inode->i_ino = %lu)\n", inode->i_ino);




 if (is_bad_inode(inode) || !OCFS2_I(inode)->ip_blkno) {
  mlog(0, "Skipping delete of bad inode\n");
  goto bail;
 }

 if (!ocfs2_inode_is_valid_to_delete(inode)) {



  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail;
 }





 sigfillset(&blocked);
 status = sigprocmask(SIG_BLOCK, &blocked, &oldset);
 if (status < 0) {
  mlog_errno(status);
  ocfs2_cleanup_delete_inode(inode, 1);
  goto bail;
 }






 status = ocfs2_nfs_sync_lock(OCFS2_SB(inode->i_sb), 0);
 if (status < 0) {
  mlog(ML_ERROR, "getting nfs sync lock(PR) failed %d\n", status);
  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail_unblock;
 }
 status = ocfs2_inode_lock(inode, &di_bh, 1);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail_unlock_nfs_sync;
 }



 status = ocfs2_query_inode_wipe(inode, di_bh, &wipe);
 if (!wipe || status < 0) {



  if (status < 0)
   mlog_errno(status);




  ocfs2_cleanup_delete_inode(inode, 1);
  goto bail_unlock_inode;
 }

 ocfs2_cleanup_delete_inode(inode, 0);

 status = ocfs2_wipe_inode(inode, di_bh);
 if (status < 0) {
  if (status != -EDEADLK)
   mlog_errno(status);
  goto bail_unlock_inode;
 }
 OCFS2_I(inode)->ip_flags |= OCFS2_INODE_DELETED;

bail_unlock_inode:
 ocfs2_inode_unlock(inode, 1);
 brelse(di_bh);

bail_unlock_nfs_sync:
 ocfs2_nfs_sync_unlock(OCFS2_SB(inode->i_sb), 0);

bail_unblock:
 status = sigprocmask(SIG_SETMASK, &oldset, ((void*)0));
 if (status < 0)
  mlog_errno(status);
bail:
 clear_inode(inode);
 mlog_exit_void();
}
