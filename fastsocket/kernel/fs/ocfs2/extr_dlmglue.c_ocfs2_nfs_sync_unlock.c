
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_nfs_sync_lockres; } ;


 int LKM_EXMODE ;
 int LKM_PRMODE ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int ) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_nfs_sync_unlock(struct ocfs2_super *osb, int ex)
{
 struct ocfs2_lock_res *lockres = &osb->osb_nfs_sync_lockres;

 if (!ocfs2_mount_local(osb))
  ocfs2_cluster_unlock(osb, lockres,
         ex ? LKM_EXMODE : LKM_PRMODE);
}
