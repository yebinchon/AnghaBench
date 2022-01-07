
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_state; int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct ocfs2_lock_res ip_inode_lockres; scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int EAGAIN ;
 int EIOCBRETRY ;
 int ENOENT ;
 int EROFS ;
 int I_NEW ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_META_LOCK_NOQUEUE ;
 int OCFS2_META_LOCK_RECOVERY ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int _RET_IP_ ;
 int __ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ,int,int,int ) ;
 int brelse (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long,char*) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_assign_bh (struct inode*,struct buffer_head**,struct buffer_head*) ;
 int ocfs2_complete_lock_res_refresh (struct ocfs2_lock_res*,int ) ;
 int ocfs2_inode_lock_update (struct inode*,struct buffer_head**) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_wait_for_recovery (struct ocfs2_super*) ;

int ocfs2_inode_lock_full_nested(struct inode *inode,
     struct buffer_head **ret_bh,
     int ex,
     int arg_flags,
     int subclass)
{
 int status, level, acquired;
 u32 dlm_flags;
 struct ocfs2_lock_res *lockres = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct buffer_head *local_bh = ((void*)0);

 BUG_ON(!inode);

 mlog_entry_void();

 mlog(0, "inode %llu, take %s META lock\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno,
      ex ? "EXMODE" : "PRMODE");

 status = 0;
 acquired = 0;


 if (ocfs2_is_hard_readonly(osb)) {
  if (ex)
   status = -EROFS;
  goto bail;
 }

 if (ocfs2_mount_local(osb))
  goto local;

 if (!(arg_flags & OCFS2_META_LOCK_RECOVERY))
  ocfs2_wait_for_recovery(osb);

 lockres = &OCFS2_I(inode)->ip_inode_lockres;
 level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 dlm_flags = 0;
 if (arg_flags & OCFS2_META_LOCK_NOQUEUE)
  dlm_flags |= DLM_LKF_NOQUEUE;

 status = __ocfs2_cluster_lock(osb, lockres, level, dlm_flags,
          arg_flags, subclass, _RET_IP_);
 if (status < 0) {
  if (status != -EAGAIN && status != -EIOCBRETRY)
   mlog_errno(status);
  goto bail;
 }


 acquired = 1;





 if (!(arg_flags & OCFS2_META_LOCK_RECOVERY))
  ocfs2_wait_for_recovery(osb);

local:






 if (inode->i_state & I_NEW) {
  status = 0;
  if (lockres)
   ocfs2_complete_lock_res_refresh(lockres, 0);
  goto bail;
 }






 status = ocfs2_inode_lock_update(inode, &local_bh);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  goto bail;
 }

 if (ret_bh) {
  status = ocfs2_assign_bh(inode, ret_bh, local_bh);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

bail:
 if (status < 0) {
  if (ret_bh && (*ret_bh)) {
   brelse(*ret_bh);
   *ret_bh = ((void*)0);
  }
  if (acquired)
   ocfs2_inode_unlock(inode, ex);
 }

 if (local_bh)
  brelse(local_bh);

 mlog_exit(status);
 return status;
}
