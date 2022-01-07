
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int acks_winsz; int rx_data_expect; int creation_jif; scalar_t__ rx_data_eaten; scalar_t__ ackr_win_top; scalar_t__ rx_first_oos; int sock_node; int state; int debug_id; int usage; int state_lock; int lock; int tx_waitq; int rx_oos_queue; int rx_queue; int accept_link; int processor; int destroyer; int resend_timer; int ack_timer; int deadspan; int lifetimer; int acks_window; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 int RXRPC_CALL_CLIENT_SEND_REQUEST ;
 scalar_t__ RXRPC_MAXACKS ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 int kmalloc (int,int ) ;
 int kmem_cache_free (int ,struct rxrpc_call*) ;
 struct rxrpc_call* kmem_cache_zalloc (int ,int ) ;
 int memset (int *,int,int) ;
 int rwlock_init (int *) ;
 int rxrpc_ack_time_expired ;
 int rxrpc_call_jar ;
 int rxrpc_call_life_expired ;
 int rxrpc_dead_call_expired ;
 int rxrpc_debug_id ;
 int rxrpc_destroy_call ;
 int rxrpc_process_call ;
 int rxrpc_resend_time_expired ;
 int setup_timer (int *,int *,unsigned long) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rxrpc_call *rxrpc_alloc_call(gfp_t gfp)
{
 struct rxrpc_call *call;

 call = kmem_cache_zalloc(rxrpc_call_jar, gfp);
 if (!call)
  return ((void*)0);

 call->acks_winsz = 16;
 call->acks_window = kmalloc(call->acks_winsz * sizeof(unsigned long),
        gfp);
 if (!call->acks_window) {
  kmem_cache_free(rxrpc_call_jar, call);
  return ((void*)0);
 }

 setup_timer(&call->lifetimer, &rxrpc_call_life_expired,
      (unsigned long) call);
 setup_timer(&call->deadspan, &rxrpc_dead_call_expired,
      (unsigned long) call);
 setup_timer(&call->ack_timer, &rxrpc_ack_time_expired,
      (unsigned long) call);
 setup_timer(&call->resend_timer, &rxrpc_resend_time_expired,
      (unsigned long) call);
 INIT_WORK(&call->destroyer, &rxrpc_destroy_call);
 INIT_WORK(&call->processor, &rxrpc_process_call);
 INIT_LIST_HEAD(&call->accept_link);
 skb_queue_head_init(&call->rx_queue);
 skb_queue_head_init(&call->rx_oos_queue);
 init_waitqueue_head(&call->tx_waitq);
 spin_lock_init(&call->lock);
 rwlock_init(&call->state_lock);
 atomic_set(&call->usage, 1);
 call->debug_id = atomic_inc_return(&rxrpc_debug_id);
 call->state = RXRPC_CALL_CLIENT_SEND_REQUEST;

 memset(&call->sock_node, 0xed, sizeof(call->sock_node));

 call->rx_data_expect = 1;
 call->rx_data_eaten = 0;
 call->rx_first_oos = 0;
 call->ackr_win_top = call->rx_data_eaten + 1 + RXRPC_MAXACKS;
 call->creation_jif = jiffies;
 return call;
}
