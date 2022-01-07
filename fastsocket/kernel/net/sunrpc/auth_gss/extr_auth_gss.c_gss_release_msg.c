
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_upcall_msg {int rpc_waitqueue; int * ctx; int list; int count; } ;


 int BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int gss_put_ctx (int *) ;
 int kfree (struct gss_upcall_msg*) ;
 int list_empty (int *) ;
 int put_pipe_version () ;
 int rpc_destroy_wait_queue (int *) ;

__attribute__((used)) static void
gss_release_msg(struct gss_upcall_msg *gss_msg)
{
 if (!atomic_dec_and_test(&gss_msg->count))
  return;
 put_pipe_version();
 BUG_ON(!list_empty(&gss_msg->list));
 if (gss_msg->ctx != ((void*)0))
  gss_put_ctx(gss_msg->ctx);
 rpc_destroy_wait_queue(&gss_msg->rpc_waitqueue);
 kfree(gss_msg);
}
