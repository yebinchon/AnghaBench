
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; } ;
struct sock {int sk_sleep; int sk_receive_queue; struct socket* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int handle; } ;


 int OVERLOAD_LIMIT_BASE ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_LISTENING ;
 scalar_t__ SS_READY ;
 int TIPC_ERR_NO_PORT ;
 int TIPC_ERR_OVERLOAD ;
 int TIPC_OK ;
 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ msg_connected (struct tipc_msg*) ;
 int msg_data (struct tipc_msg*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 scalar_t__ msg_errcode (struct tipc_msg*) ;
 scalar_t__ msg_mcast (struct tipc_msg*) ;
 scalar_t__ rx_queue_full (struct tipc_msg*,int,int) ;
 int skb_queue_len (int *) ;
 int tipc_disconnect_port (int ) ;
 int tipc_queue_size ;
 int tipc_sk_port (struct sock*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int ) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static u32 filter_rcv(struct sock *sk, struct sk_buff *buf)
{
 struct socket *sock = sk->sk_socket;
 struct tipc_msg *msg = buf_msg(buf);
 u32 recv_q_len;
 if (sock->state == SS_READY) {
  if (msg_connected(msg)) {
   msg_dbg(msg, "dispatch filter 1\n");
   return TIPC_ERR_NO_PORT;
  }
 } else {
  if (msg_mcast(msg)) {
   msg_dbg(msg, "dispatch filter 2\n");
   return TIPC_ERR_NO_PORT;
  }
  if (sock->state == SS_CONNECTED) {
   if (!msg_connected(msg)) {
    msg_dbg(msg, "dispatch filter 3\n");
    return TIPC_ERR_NO_PORT;
   }
  }
  else if (sock->state == SS_CONNECTING) {
   if (!msg_connected(msg) && (msg_errcode(msg) == 0)) {
    msg_dbg(msg, "dispatch filter 4\n");
    return TIPC_ERR_NO_PORT;
   }
  }
  else if (sock->state == SS_LISTENING) {
   if (msg_connected(msg) || msg_errcode(msg)) {
    msg_dbg(msg, "dispatch filter 5\n");
    return TIPC_ERR_NO_PORT;
   }
  }
  else if (sock->state == SS_DISCONNECTING) {
   msg_dbg(msg, "dispatch filter 6\n");
   return TIPC_ERR_NO_PORT;
  }
  else {
   if (msg_connected(msg) || msg_errcode(msg)) {
    msg_dbg(msg, "dispatch filter 7\n");
    return TIPC_ERR_NO_PORT;
   }
  }
 }



 recv_q_len = (u32)atomic_read(&tipc_queue_size);
 if (unlikely(recv_q_len >= OVERLOAD_LIMIT_BASE)) {
  if (rx_queue_full(msg, recv_q_len, OVERLOAD_LIMIT_BASE))
   return TIPC_ERR_OVERLOAD;
 }
 recv_q_len = skb_queue_len(&sk->sk_receive_queue);
 if (unlikely(recv_q_len >= (OVERLOAD_LIMIT_BASE / 2))) {
  if (rx_queue_full(msg, recv_q_len, OVERLOAD_LIMIT_BASE / 2))
   return TIPC_ERR_OVERLOAD;
 }



 msg_dbg(msg, "<DISP<: ");
 TIPC_SKB_CB(buf)->handle = msg_data(msg);
 atomic_inc(&tipc_queue_size);
 __skb_queue_tail(&sk->sk_receive_queue, buf);



 if (unlikely(msg_errcode(msg) && (sock->state == SS_CONNECTED))) {
  sock->state = SS_DISCONNECTING;
  tipc_disconnect_port(tipc_sk_port(sk));
 }

 if (waitqueue_active(sk->sk_sleep))
  wake_up_interruptible(sk->sk_sleep);
 return TIPC_OK;
}
