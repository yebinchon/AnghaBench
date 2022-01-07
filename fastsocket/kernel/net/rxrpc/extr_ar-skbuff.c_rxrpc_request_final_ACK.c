
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int state; int state_lock; int ack_timer; int events; } ;


 int RXRPC_CALL_ACK_FINAL ;
 int RXRPC_CALL_CLIENT_FINAL_ACK ;

 int RXRPC_CALL_SERVER_ACK_REQUEST ;

 int _debug (char*) ;
 int rxrpc_get_call (struct rxrpc_call*) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int set_bit (int ,int *) ;
 int try_to_del_timer_sync (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void rxrpc_request_final_ACK(struct rxrpc_call *call)
{

 write_lock(&call->state_lock);

 switch (call->state) {
 case 129:
  call->state = RXRPC_CALL_CLIENT_FINAL_ACK;
  _debug("request final ACK");



  rxrpc_get_call(call);
  set_bit(RXRPC_CALL_ACK_FINAL, &call->events);
  if (try_to_del_timer_sync(&call->ack_timer) >= 0)
   rxrpc_queue_call(call);
  break;

 case 128:
  call->state = RXRPC_CALL_SERVER_ACK_REQUEST;
 default:
  break;
 }

 write_unlock(&call->state_lock);
}
