
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;
struct sk_buff {size_t len; } ;
struct pep_sock {int ctrlreq_queue; } ;
struct msghdr {int msg_flags; int msg_iov; } ;
struct kiocb {int dummy; } ;


 int ECONNRESET ;
 int EINVAL ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 int MSG_EOR ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 int PN_PIPE_NO_ERROR ;
 int SOCK_URGINLINE ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 scalar_t__ TCP_CLOSE_WAIT ;
 scalar_t__ TCP_ESTABLISHED ;
 int lock_sock (struct sock*) ;
 int pep_ctrlreq_error (struct sock*,struct sk_buff*,int ,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_grant_credits (struct sock*) ;
 int release_sock (struct sock*) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,size_t) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pep_recvmsg(struct kiocb *iocb, struct sock *sk,
   struct msghdr *msg, size_t len, int noblock,
   int flags, int *addr_len)
{
 struct sk_buff *skb;
 int err;

 if (unlikely(1 << sk->sk_state & (TCPF_LISTEN | TCPF_CLOSE)))
  return -ENOTCONN;

 if ((flags & MSG_OOB) || sock_flag(sk, SOCK_URGINLINE)) {

  struct pep_sock *pn = pep_sk(sk);

  skb = skb_dequeue(&pn->ctrlreq_queue);
  if (skb) {
   pep_ctrlreq_error(sk, skb, PN_PIPE_NO_ERROR,
      GFP_KERNEL);
   msg->msg_flags |= MSG_OOB;
   goto copy;
  }
  if (flags & MSG_OOB)
   return -EINVAL;
 }

 skb = skb_recv_datagram(sk, flags, noblock, &err);
 lock_sock(sk);
 if (skb == ((void*)0)) {
  if (err == -ENOTCONN && sk->sk_state == TCP_CLOSE_WAIT)
   err = -ECONNRESET;
  release_sock(sk);
  return err;
 }

 if (sk->sk_state == TCP_ESTABLISHED)
  pipe_grant_credits(sk);
 release_sock(sk);
copy:
 msg->msg_flags |= MSG_EOR;
 if (skb->len > len)
  msg->msg_flags |= MSG_TRUNC;
 else
  len = skb->len;

 err = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, len);
 if (!err)
  err = (flags & MSG_TRUNC) ? skb->len : len;

 skb_free_datagram(sk, skb);
 return err;
}
