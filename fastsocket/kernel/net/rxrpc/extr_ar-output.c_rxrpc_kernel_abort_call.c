
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rxrpc_call {scalar_t__ state; TYPE_1__* socket; int conn; int user_call_ID; int debug_id; } ;
struct TYPE_2__ {int sk; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;
 int _debug (char*,int ,int ,scalar_t__,int ) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int lock_sock (int *) ;
 int release_sock (int *) ;
 int rxrpc_send_abort (struct rxrpc_call*,int ) ;

void rxrpc_kernel_abort_call(struct rxrpc_call *call, u32 abort_code)
{
 _enter("{%d},%d", call->debug_id, abort_code);

 lock_sock(&call->socket->sk);

 _debug("CALL %d USR %lx ST %d on CONN %p",
        call->debug_id, call->user_call_ID, call->state, call->conn);

 if (call->state < RXRPC_CALL_COMPLETE)
  rxrpc_send_abort(call, abort_code);

 release_sock(&call->socket->sk);
 _leave("");
}
