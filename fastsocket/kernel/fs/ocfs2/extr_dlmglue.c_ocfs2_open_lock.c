
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {struct ocfs2_lock_res ip_open_lockres; scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_PR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int ,int ) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_open_lock(struct inode *inode)
{
 int status = 0;
 struct ocfs2_lock_res *lockres;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 BUG_ON(!inode);

 mlog_entry_void();

 mlog(0, "inode %llu take PRMODE open lock\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno);

 if (ocfs2_mount_local(osb))
  goto out;

 lockres = &OCFS2_I(inode)->ip_open_lockres;

 status = ocfs2_cluster_lock(OCFS2_SB(inode->i_sb), lockres,
        DLM_LOCK_PR, 0, 0);
 if (status < 0)
  mlog_errno(status);

out:
 mlog_exit(status);
 return status;
}
