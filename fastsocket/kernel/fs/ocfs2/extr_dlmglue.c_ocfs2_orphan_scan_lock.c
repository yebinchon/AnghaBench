
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_lock_res {int l_lksb; } ;
struct TYPE_2__ {scalar_t__ os_seqno; struct ocfs2_lock_res os_lockres; } ;
struct ocfs2_super {TYPE_1__ osb_orphan_scan; } ;
struct ocfs2_orphan_scan_lvb {scalar_t__ lvb_version; int lvb_os_seqno; } ;


 int DLM_LOCK_EX ;
 int EROFS ;
 scalar_t__ OCFS2_ORPHAN_LVB_VERSION ;
 scalar_t__ be32_to_cpu (int ) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int ,int ) ;
 struct ocfs2_orphan_scan_lvb* ocfs2_dlm_lvb (int *) ;
 scalar_t__ ocfs2_dlm_lvb_valid (int *) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_orphan_scan_lock(struct ocfs2_super *osb, u32 *seqno)
{
 struct ocfs2_lock_res *lockres;
 struct ocfs2_orphan_scan_lvb *lvb;
 int status = 0;

 if (ocfs2_is_hard_readonly(osb))
  return -EROFS;

 if (ocfs2_mount_local(osb))
  return 0;

 lockres = &osb->osb_orphan_scan.os_lockres;
 status = ocfs2_cluster_lock(osb, lockres, DLM_LOCK_EX, 0, 0);
 if (status < 0)
  return status;

 lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
 if (ocfs2_dlm_lvb_valid(&lockres->l_lksb) &&
     lvb->lvb_version == OCFS2_ORPHAN_LVB_VERSION)
  *seqno = be32_to_cpu(lvb->lvb_os_seqno);
 else
  *seqno = osb->osb_orphan_scan.os_seqno + 1;

 return status;
}
