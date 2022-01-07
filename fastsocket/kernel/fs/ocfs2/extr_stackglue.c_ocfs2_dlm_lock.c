
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ocfs2_dlm_lksb {int dummy; } ocfs2_dlm_lksb ;
typedef int u32 ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_cluster_connection {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* dlm_lock ) (struct ocfs2_cluster_connection*,int,union ocfs2_dlm_lksb*,int ,void*,unsigned int,struct ocfs2_lock_res*) ;} ;


 int BUG_ON (int ) ;
 TYPE_2__* active_stack ;
 int * lproto ;
 int stub1 (struct ocfs2_cluster_connection*,int,union ocfs2_dlm_lksb*,int ,void*,unsigned int,struct ocfs2_lock_res*) ;

int ocfs2_dlm_lock(struct ocfs2_cluster_connection *conn,
     int mode,
     union ocfs2_dlm_lksb *lksb,
     u32 flags,
     void *name,
     unsigned int namelen,
     struct ocfs2_lock_res *astarg)
{
 BUG_ON(lproto == ((void*)0));

 return active_stack->sp_ops->dlm_lock(conn, mode, lksb, flags,
           name, namelen, astarg);
}
