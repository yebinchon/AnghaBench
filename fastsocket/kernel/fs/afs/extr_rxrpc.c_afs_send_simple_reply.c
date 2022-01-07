
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int msg_iovlen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct afs_call {TYPE_1__* type; int * rxcall; int state; } ;
struct TYPE_2__ {int (* destructor ) (struct afs_call*) ;} ;


 int AFS_CALL_AWAIT_ACK ;
 int ENOMEM ;
 int RX_USER_ABORT ;
 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_free_call (struct afs_call*) ;
 int rxrpc_kernel_abort_call (int *,int ) ;
 int rxrpc_kernel_end_call (int *) ;
 int rxrpc_kernel_send_data (int *,struct msghdr*,size_t) ;
 int stub1 (struct afs_call*) ;

void afs_send_simple_reply(struct afs_call *call, const void *buf, size_t len)
{
 struct msghdr msg;
 struct iovec iov[1];
 int n;

 _enter("");

 iov[0].iov_base = (void *) buf;
 iov[0].iov_len = len;
 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 msg.msg_iov = iov;
 msg.msg_iovlen = 1;
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;

 call->state = AFS_CALL_AWAIT_ACK;
 n = rxrpc_kernel_send_data(call->rxcall, &msg, len);
 if (n >= 0) {
  _leave(" [replied]");
  return;
 }
 if (n == -ENOMEM) {
  _debug("oom");
  rxrpc_kernel_abort_call(call->rxcall, RX_USER_ABORT);
 }
 rxrpc_kernel_end_call(call->rxcall);
 call->rxcall = ((void*)0);
 call->type->destructor(call);
 afs_free_call(call);
 _leave(" [error]");
}
