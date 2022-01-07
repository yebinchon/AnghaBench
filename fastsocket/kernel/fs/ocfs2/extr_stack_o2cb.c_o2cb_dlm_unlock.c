
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ocfs2_dlm_lksb {int lksb_o2dlm; } ;
typedef int u32 ;
struct ocfs2_cluster_connection {int cc_lockspace; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int dlm_status_to_errno (int) ;
 int dlmunlock (int ,int *,int,int ,void*) ;
 int flags_to_o2dlm (int ) ;
 int o2dlm_unlock_ast_wrapper ;

__attribute__((used)) static int o2cb_dlm_unlock(struct ocfs2_cluster_connection *conn,
      union ocfs2_dlm_lksb *lksb,
      u32 flags,
      void *astarg)
{
 enum dlm_status status;
 int o2dlm_flags = flags_to_o2dlm(flags);
 int ret;

 status = dlmunlock(conn->cc_lockspace, &lksb->lksb_o2dlm,
      o2dlm_flags, o2dlm_unlock_ast_wrapper, astarg);
 ret = dlm_status_to_errno(status);
 return ret;
}
