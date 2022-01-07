
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int node; int ref; } ;
struct tipc_sock {TYPE_1__ peer_name; struct tipc_port* p; } ;
struct tipc_port {int conn_instance; int conn_type; int ref; } ;
struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_receive_queue; int * sk_sleep; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int * member_0; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_LISTENING ;
 scalar_t__ SS_READY ;
 int __skb_dequeue (int *) ;
 int __skb_queue_head (int *,struct sk_buff*) ;
 int advance_rx_queue (struct sock*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_importance (struct tipc_msg*) ;
 scalar_t__ msg_named (struct tipc_msg*) ;
 int msg_nameinst (struct tipc_msg*) ;
 int msg_nametype (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int reject_rx_queue (struct sock*) ;
 int release_sock (struct sock*) ;
 int send_packet (int *,struct socket*,struct msghdr*,int ) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int sock_net (struct sock*) ;
 int tipc_connect2port (int ,TYPE_1__*) ;
 int tipc_create (int ,struct socket*,int ,int ) ;
 int tipc_set_portimportance (int ,int ) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int accept(struct socket *sock, struct socket *new_sock, int flags)
{
 struct sock *sk = sock->sk;
 struct sk_buff *buf;
 int res;

 lock_sock(sk);

 if (sock->state == SS_READY) {
  res = -EOPNOTSUPP;
  goto exit;
 }
 if (sock->state != SS_LISTENING) {
  res = -EINVAL;
  goto exit;
 }

 while (skb_queue_empty(&sk->sk_receive_queue)) {
  if (flags & O_NONBLOCK) {
   res = -EWOULDBLOCK;
   goto exit;
  }
  release_sock(sk);
  res = wait_event_interruptible(*sk->sk_sleep,
    (!skb_queue_empty(&sk->sk_receive_queue)));
  lock_sock(sk);
  if (res)
   goto exit;
 }

 buf = skb_peek(&sk->sk_receive_queue);

 res = tipc_create(sock_net(sock->sk), new_sock, 0, 0);
 if (!res) {
  struct sock *new_sk = new_sock->sk;
  struct tipc_sock *new_tsock = tipc_sk(new_sk);
  struct tipc_port *new_tport = new_tsock->p;
  u32 new_ref = new_tport->ref;
  struct tipc_msg *msg = buf_msg(buf);

  lock_sock(new_sk);






  reject_rx_queue(new_sk);



  new_tsock->peer_name.ref = msg_origport(msg);
  new_tsock->peer_name.node = msg_orignode(msg);
  tipc_connect2port(new_ref, &new_tsock->peer_name);
  new_sock->state = SS_CONNECTED;

  tipc_set_portimportance(new_ref, msg_importance(msg));
  if (msg_named(msg)) {
   new_tport->conn_type = msg_nametype(msg);
   new_tport->conn_instance = msg_nameinst(msg);
  }






  msg_dbg(msg,"<ACC<: ");
  if (!msg_data_sz(msg)) {
   struct msghdr m = {((void*)0),};

   advance_rx_queue(sk);
   send_packet(((void*)0), new_sock, &m, 0);
  } else {
   __skb_dequeue(&sk->sk_receive_queue);
   __skb_queue_head(&new_sk->sk_receive_queue, buf);
  }
  release_sock(new_sk);
 }
exit:
 release_sock(sk);
 return res;
}
