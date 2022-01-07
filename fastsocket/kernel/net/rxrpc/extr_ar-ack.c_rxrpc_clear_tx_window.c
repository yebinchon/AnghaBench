
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int sequence; } ;


 int atomic_read (int *) ;
 int rxrpc_rotate_tx_window (struct rxrpc_call*,int ) ;

__attribute__((used)) static void rxrpc_clear_tx_window(struct rxrpc_call *call)
{
 rxrpc_rotate_tx_window(call, atomic_read(&call->sequence));
}
