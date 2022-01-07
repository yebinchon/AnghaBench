
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rxrpc_call {size_t ackr_reason; int lock; } ;
typedef scalar_t__ s8 ;
typedef int __be32 ;


 int __rxrpc_propose_ACK (struct rxrpc_call*,size_t,int ,int) ;
 scalar_t__* rxrpc_ack_priority ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rxrpc_propose_ACK(struct rxrpc_call *call, u8 ack_reason,
         __be32 serial, bool immediate)
{
 s8 prior = rxrpc_ack_priority[ack_reason];

 if (prior > rxrpc_ack_priority[call->ackr_reason]) {
  spin_lock_bh(&call->lock);
  __rxrpc_propose_ACK(call, ack_reason, serial, immediate);
  spin_unlock_bh(&call->lock);
 }
}
