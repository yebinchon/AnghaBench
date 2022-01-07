
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_call {scalar_t__ state; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
typedef enum rxrpc_command { ____Placeholder_rxrpc_command } rxrpc_command ;


 int BUG () ;
 int EBADSLT ;
 int EPROTO ;
 int ESHUTDOWN ;
 scalar_t__ IS_ERR (struct rxrpc_call*) ;
 int PTR_ERR (struct rxrpc_call*) ;
 scalar_t__ RXRPC_CALL_CLIENT_SEND_REQUEST ;
 scalar_t__ RXRPC_CALL_COMPLETE ;
 scalar_t__ RXRPC_CALL_SERVER_ACK_REQUEST ;
 scalar_t__ RXRPC_CALL_SERVER_SEND_REPLY ;
 int RXRPC_CMD_ACCEPT ;


 int _enter (char*) ;
 int _leave (char*,int) ;
 struct rxrpc_call* rxrpc_accept_call (struct rxrpc_sock*,unsigned long) ;
 struct rxrpc_call* rxrpc_find_server_call (struct rxrpc_sock*,unsigned long) ;
 int rxrpc_put_call (struct rxrpc_call*) ;
 int rxrpc_send_abort (struct rxrpc_call*,int ) ;
 int rxrpc_send_data (struct kiocb*,struct rxrpc_sock*,struct rxrpc_call*,struct msghdr*,size_t) ;
 int rxrpc_sendmsg_cmsg (struct rxrpc_sock*,struct msghdr*,unsigned long*,int*,int *,int) ;

int rxrpc_server_sendmsg(struct kiocb *iocb, struct rxrpc_sock *rx,
    struct msghdr *msg, size_t len)
{
 enum rxrpc_command cmd;
 struct rxrpc_call *call;
 unsigned long user_call_ID = 0;
 u32 abort_code = 0;
 int ret;

 _enter("");

 ret = rxrpc_sendmsg_cmsg(rx, msg, &user_call_ID, &cmd, &abort_code,
     1);
 if (ret < 0)
  return ret;

 if (cmd == RXRPC_CMD_ACCEPT) {
  call = rxrpc_accept_call(rx, user_call_ID);
  if (IS_ERR(call))
   return PTR_ERR(call);
  rxrpc_put_call(call);
  return 0;
 }

 call = rxrpc_find_server_call(rx, user_call_ID);
 if (!call)
  return -EBADSLT;
 if (call->state >= RXRPC_CALL_COMPLETE) {
  ret = -ESHUTDOWN;
  goto out;
 }

 switch (cmd) {
 case 128:
  if (call->state != RXRPC_CALL_CLIENT_SEND_REQUEST &&
      call->state != RXRPC_CALL_SERVER_ACK_REQUEST &&
      call->state != RXRPC_CALL_SERVER_SEND_REPLY) {

   ret = -EPROTO;
   break;
  }

  ret = rxrpc_send_data(iocb, rx, call, msg, len);
  break;

 case 129:
  rxrpc_send_abort(call, abort_code);
  break;
 default:
  BUG();
 }

 out:
 rxrpc_put_call(call);
 _leave(" = %d", ret);
 return ret;
}
