
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {int ax25_call; } ;
struct sockaddr_ax25 {TYPE_1__ sax25_call; int sax25_family; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_namelen; int msg_iov; int msg_flags; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;


 int AF_NETROM ;
 int AX25_ADDR_LEN ;
 int ENOTCONN ;
 int MSG_DONTWAIT ;
 int MSG_TRUNC ;
 scalar_t__ TCP_ESTABLISHED ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,size_t) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,int ,int ) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int nr_recvmsg(struct kiocb *iocb, struct socket *sock,
        struct msghdr *msg, size_t size, int flags)
{
 struct sock *sk = sock->sk;
 struct sockaddr_ax25 *sax = (struct sockaddr_ax25 *)msg->msg_name;
 size_t copied;
 struct sk_buff *skb;
 int er;






 lock_sock(sk);
 if (sk->sk_state != TCP_ESTABLISHED) {
  release_sock(sk);
  return -ENOTCONN;
 }

 msg->msg_namelen = 0;


 if ((skb = skb_recv_datagram(sk, flags & ~MSG_DONTWAIT, flags & MSG_DONTWAIT, &er)) == ((void*)0)) {
  release_sock(sk);
  return er;
 }

 skb_reset_transport_header(skb);
 copied = skb->len;

 if (copied > size) {
  copied = size;
  msg->msg_flags |= MSG_TRUNC;
 }

 skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);

 if (sax != ((void*)0)) {
  sax->sax25_family = AF_NETROM;
  skb_copy_from_linear_data_offset(skb, 7, sax->sax25_call.ax25_call,
         AX25_ADDR_LEN);
  msg->msg_namelen = sizeof(*sax);
 }

 skb_free_datagram(sk, skb);

 release_sock(sk);
 return copied;
}
