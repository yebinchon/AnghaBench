
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct rpc_clnt {int dummy; } ;
struct gss_upcall_msg {struct gss_auth* auth; int uid; int count; int waitqueue; int rpc_waitqueue; int list; int inode; } ;
struct gss_auth {TYPE_1__** dentry; } ;
struct TYPE_2__ {int d_inode; } ;


 int ENOMEM ;
 struct gss_upcall_msg* ERR_PTR (int) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int RPC_I (int ) ;
 int atomic_set (int *,int) ;
 int get_pipe_version () ;
 int gss_encode_msg (struct gss_upcall_msg*,struct rpc_clnt*,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct gss_upcall_msg*) ;
 struct gss_upcall_msg* kzalloc (int,int ) ;
 int rpc_init_wait_queue (int *,char*) ;

__attribute__((used)) static inline struct gss_upcall_msg *
gss_alloc_msg(struct gss_auth *gss_auth, uid_t uid, struct rpc_clnt *clnt,
  int machine_cred)
{
 struct gss_upcall_msg *gss_msg;
 int vers;

 gss_msg = kzalloc(sizeof(*gss_msg), GFP_NOFS);
 if (gss_msg == ((void*)0))
  return ERR_PTR(-ENOMEM);
 vers = get_pipe_version();
 if (vers < 0) {
  kfree(gss_msg);
  return ERR_PTR(vers);
 }
 gss_msg->inode = RPC_I(gss_auth->dentry[vers]->d_inode);
 INIT_LIST_HEAD(&gss_msg->list);
 rpc_init_wait_queue(&gss_msg->rpc_waitqueue, "RPCSEC_GSS upcall waitq");
 init_waitqueue_head(&gss_msg->waitqueue);
 atomic_set(&gss_msg->count, 1);
 gss_msg->uid = uid;
 gss_msg->auth = gss_auth;
 gss_encode_msg(gss_msg, clnt, machine_cred);
 return gss_msg;
}
