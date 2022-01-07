
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; } ;
struct msghdr {int msg_iov; int msg_flags; scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;


 scalar_t__ BT_CLOSED ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int EOPNOTSUPP ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 int hci_sock_cmsg (struct sock*,struct msghdr*,struct sk_buff*) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,int) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int hci_sock_recvmsg(struct kiocb *iocb, struct socket *sock,
    struct msghdr *msg, size_t len, int flags)
{
 int noblock = flags & MSG_DONTWAIT;
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 int copied, err;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (flags & (MSG_OOB))
  return -EOPNOTSUPP;

 msg->msg_namelen = 0;

 if (sk->sk_state == BT_CLOSED)
  return 0;

 if (!(skb = skb_recv_datagram(sk, flags, noblock, &err)))
  return err;

 copied = skb->len;
 if (len < copied) {
  msg->msg_flags |= MSG_TRUNC;
  copied = len;
 }

 skb_reset_transport_header(skb);
 err = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);

 hci_sock_cmsg(sk, msg, skb);

 skb_free_datagram(sk, skb);

 return err ? : copied;
}
