
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {int dl_lockres; } ;
struct dentry {int d_sb; struct ocfs2_dentry_lock* d_fsdata; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,int *,int) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_dentry_unlock(struct dentry *dentry, int ex)
{
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_dentry_lock *dl = dentry->d_fsdata;
 struct ocfs2_super *osb = OCFS2_SB(dentry->d_sb);

 if (!ocfs2_mount_local(osb))
  ocfs2_cluster_unlock(osb, &dl->dl_lockres, level);
}
