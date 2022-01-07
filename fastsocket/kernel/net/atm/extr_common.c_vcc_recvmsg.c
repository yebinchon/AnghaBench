
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_rmem_alloc; } ;
struct sk_buff {int len; int truesize; } ;
struct msghdr {int msg_iov; int msg_flags; scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;
struct atm_vcc {int flags; } ;


 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_CLOSE ;
 int ATM_VF_READY ;
 int ATM_VF_RELEASED ;
 int EINVAL ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int MSG_DONTWAIT ;
 int MSG_TRUNC ;
 scalar_t__ SS_CONNECTED ;
 int atm_return (struct atm_vcc*,int ) ;
 int atomic_read (int *) ;
 int pr_debug (char*,int ,int ) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,int) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;

int vcc_recvmsg(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
  size_t size, int flags)
{
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc;
 struct sk_buff *skb;
 int copied, error = -EINVAL;

 msg->msg_namelen = 0;

 if (sock->state != SS_CONNECTED)
  return -ENOTCONN;
 if (flags & ~MSG_DONTWAIT)
  return -EOPNOTSUPP;
 vcc = ATM_SD(sock);
 if (test_bit(ATM_VF_RELEASED,&vcc->flags) ||
     test_bit(ATM_VF_CLOSE,&vcc->flags) ||
     !test_bit(ATM_VF_READY, &vcc->flags))
  return 0;

 skb = skb_recv_datagram(sk, flags, flags & MSG_DONTWAIT, &error);
 if (!skb)
  return error;

 copied = skb->len;
 if (copied > size) {
  copied = size;
  msg->msg_flags |= MSG_TRUNC;
 }

 error = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);
 if (error)
  return error;
 sock_recv_ts_and_drops(msg, sk, skb);
 pr_debug("RcvM %d -= %d\n", atomic_read(&sk->sk_rmem_alloc), skb->truesize);
 atm_return(vcc, skb->truesize);
 skb_free_datagram(sk, skb);
 return copied;
}
