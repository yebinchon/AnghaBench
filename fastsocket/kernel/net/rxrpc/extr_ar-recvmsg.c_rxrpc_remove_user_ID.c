
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxrpc_sock {int call_lock; } ;
struct rxrpc_call {int state_lock; int events; int flags; TYPE_1__* socket; int sock_node; int debug_id; } ;
struct TYPE_2__ {int calls; } ;


 int RXRPC_CALL_HAS_USERID ;
 int RXRPC_CALL_RELEASE ;
 int RXRPC_CALL_RELEASED ;
 int _debug (char*,int ) ;
 int clear_bit (int ,int *) ;
 int rb_erase (int *,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void rxrpc_remove_user_ID(struct rxrpc_sock *rx, struct rxrpc_call *call)
{
 _debug("RELEASE CALL %d", call->debug_id);

 if (test_bit(RXRPC_CALL_HAS_USERID, &call->flags)) {
  write_lock_bh(&rx->call_lock);
  rb_erase(&call->sock_node, &call->socket->calls);
  clear_bit(RXRPC_CALL_HAS_USERID, &call->flags);
  write_unlock_bh(&rx->call_lock);
 }

 read_lock_bh(&call->state_lock);
 if (!test_bit(RXRPC_CALL_RELEASED, &call->flags) &&
     !test_and_set_bit(RXRPC_CALL_RELEASE, &call->events))
  rxrpc_queue_call(call);
 read_unlock_bh(&call->state_lock);
}
