
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cred {int cr_uid; } ;
struct inode {int i_lock; } ;
struct TYPE_4__ {int errno; } ;
struct gss_upcall_msg {int waitqueue; TYPE_2__ msg; int * ctx; TYPE_1__* inode; } ;
struct gss_cred {struct rpc_cred gc_base; } ;
struct gss_auth {int client; } ;
struct TYPE_3__ {struct inode vfs_inode; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int HZ ;
 scalar_t__ IS_ERR (struct gss_upcall_msg*) ;
 int PTR_ERR (struct gss_upcall_msg*) ;
 int TASK_INTERRUPTIBLE ;
 int dprintk (char*,int ,...) ;
 int finish_wait (int *,int *) ;
 int gss_cred_set_ctx (struct rpc_cred*,int *) ;
 int gss_release_msg (struct gss_upcall_msg*) ;
 struct gss_upcall_msg* gss_setup_upcall (int ,struct gss_auth*,struct rpc_cred*) ;
 scalar_t__ pipe_version ;
 int pipe_version_waitqueue ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signalled () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;
 int wait_event_interruptible_timeout (int ,int,int) ;
 int warn_gssd () ;

__attribute__((used)) static inline int
gss_create_upcall(struct gss_auth *gss_auth, struct gss_cred *gss_cred)
{
 struct inode *inode;
 struct rpc_cred *cred = &gss_cred->gc_base;
 struct gss_upcall_msg *gss_msg;
 DEFINE_WAIT(wait);
 int err = 0;

 dprintk("RPC:       gss_upcall for uid %u\n", cred->cr_uid);
retry:
 gss_msg = gss_setup_upcall(gss_auth->client, gss_auth, cred);
 if (PTR_ERR(gss_msg) == -EAGAIN) {
  err = wait_event_interruptible_timeout(pipe_version_waitqueue,
    pipe_version >= 0, 15*HZ);
  if (err)
   goto out;
  if (pipe_version < 0)
   warn_gssd();
  goto retry;
 }
 if (IS_ERR(gss_msg)) {
  err = PTR_ERR(gss_msg);
  goto out;
 }
 inode = &gss_msg->inode->vfs_inode;
 for (;;) {
  prepare_to_wait(&gss_msg->waitqueue, &wait, TASK_INTERRUPTIBLE);
  spin_lock(&inode->i_lock);
  if (gss_msg->ctx != ((void*)0) || gss_msg->msg.errno < 0) {
   break;
  }
  spin_unlock(&inode->i_lock);
  if (signalled()) {
   err = -ERESTARTSYS;
   goto out_intr;
  }
  schedule();
 }
 if (gss_msg->ctx)
  gss_cred_set_ctx(cred, gss_msg->ctx);
 else
  err = gss_msg->msg.errno;
 spin_unlock(&inode->i_lock);
out_intr:
 finish_wait(&gss_msg->waitqueue, &wait);
 gss_release_msg(gss_msg);
out:
 dprintk("RPC:       gss_create_upcall for uid %u result %d\n",
   cred->cr_uid, err);
 return err;
}
