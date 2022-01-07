
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_tipc {scalar_t__ addrtype; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_receive_queue; int sk_rcvtimeo; int * sk_sleep; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_namelen; struct sockaddr* msg_name; int * member_0; } ;


 int EALREADY ;
 int ECONNREFUSED ;
 int EINVAL ;
 int EISCONN ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_LISTENING ;
 scalar_t__ SS_READY ;
 scalar_t__ SS_UNCONNECTED ;
 scalar_t__ TIPC_ADDR_MCAST ;
 int advance_rx_queue (struct sock*) ;
 int auto_connect (struct socket*,struct tipc_msg*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int reject_rx_queue (struct sock*) ;
 int release_sock (struct sock*) ;
 int send_msg (int *,struct socket*,struct msghdr*,int ) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_queue_empty (int *) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int connect(struct socket *sock, struct sockaddr *dest, int destlen,
     int flags)
{
 struct sock *sk = sock->sk;
 struct sockaddr_tipc *dst = (struct sockaddr_tipc *)dest;
 struct msghdr m = {((void*)0),};
 struct sk_buff *buf;
 struct tipc_msg *msg;
 int res;

 lock_sock(sk);



 if (sock->state == SS_READY) {
  res = -EOPNOTSUPP;
  goto exit;
 }



 if (flags & O_NONBLOCK) {
  res = -EWOULDBLOCK;
  goto exit;
 }



 if (sock->state == SS_LISTENING) {
  res = -EOPNOTSUPP;
  goto exit;
 }
 if (sock->state == SS_CONNECTING) {
  res = -EALREADY;
  goto exit;
 }
 if (sock->state != SS_UNCONNECTED) {
  res = -EISCONN;
  goto exit;
 }
 if (dst->addrtype == TIPC_ADDR_MCAST) {
  res = -EINVAL;
  goto exit;
 }



 reject_rx_queue(sk);



 m.msg_name = dest;
 m.msg_namelen = destlen;
 res = send_msg(((void*)0), sock, &m, 0);
 if (res < 0) {
  goto exit;
 }



 release_sock(sk);
 res = wait_event_interruptible_timeout(*sk->sk_sleep,
   (!skb_queue_empty(&sk->sk_receive_queue) ||
   (sock->state != SS_CONNECTING)),
   sk->sk_rcvtimeo);
 lock_sock(sk);

 if (res > 0) {
  buf = skb_peek(&sk->sk_receive_queue);
  if (buf != ((void*)0)) {
   msg = buf_msg(buf);
   res = auto_connect(sock, msg);
   if (!res) {
    if (!msg_data_sz(msg))
     advance_rx_queue(sk);
   }
  } else {
   if (sock->state == SS_CONNECTED) {
    res = -EISCONN;
   } else {
    res = -ECONNREFUSED;
   }
  }
 } else {
  if (res == 0)
   res = -ETIMEDOUT;
  else
   ;
  sock->state = SS_DISCONNECTING;
 }

exit:
 release_sock(sk);
 return res;
}
