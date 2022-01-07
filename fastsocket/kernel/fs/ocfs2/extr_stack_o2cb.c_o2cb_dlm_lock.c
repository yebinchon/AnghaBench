
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ocfs2_dlm_lksb {int lksb_o2dlm; } ;
typedef int u32 ;
struct ocfs2_cluster_connection {int cc_lockspace; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int dlm_status_to_errno (int) ;
 int dlmlock (int ,int,int *,int,void*,unsigned int,int ,void*,int ) ;
 int flags_to_o2dlm (int ) ;
 int mode_to_o2dlm (int) ;
 int o2dlm_blocking_ast_wrapper ;
 int o2dlm_lock_ast_wrapper ;

__attribute__((used)) static int o2cb_dlm_lock(struct ocfs2_cluster_connection *conn,
    int mode,
    union ocfs2_dlm_lksb *lksb,
    u32 flags,
    void *name,
    unsigned int namelen,
    void *astarg)
{
 enum dlm_status status;
 int o2dlm_mode = mode_to_o2dlm(mode);
 int o2dlm_flags = flags_to_o2dlm(flags);
 int ret;

 status = dlmlock(conn->cc_lockspace, o2dlm_mode, &lksb->lksb_o2dlm,
    o2dlm_flags, name, namelen,
    o2dlm_lock_ast_wrapper, astarg,
    o2dlm_blocking_ast_wrapper);
 ret = dlm_status_to_errno(status);
 return ret;
}
