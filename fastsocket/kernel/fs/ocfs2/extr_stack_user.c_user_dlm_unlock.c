
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_lkid; } ;
union ocfs2_dlm_lksb {TYPE_1__ lksb_fsdlm; } ;
typedef int u32 ;
struct ocfs2_cluster_connection {int cc_lockspace; } ;


 int dlm_unlock (int ,int ,int ,TYPE_1__*,void*) ;

__attribute__((used)) static int user_dlm_unlock(struct ocfs2_cluster_connection *conn,
      union ocfs2_dlm_lksb *lksb,
      u32 flags,
      void *astarg)
{
 int ret;

 ret = dlm_unlock(conn->cc_lockspace, lksb->lksb_fsdlm.sb_lkid,
    flags, &lksb->lksb_fsdlm, astarg);
 return ret;
}
