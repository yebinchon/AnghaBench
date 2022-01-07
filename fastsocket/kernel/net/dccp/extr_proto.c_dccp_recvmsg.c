
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_shutdown; scalar_t__ sk_err; int sk_receive_queue; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_iov; int msg_flags; } ;
struct kiocb {int dummy; } ;
struct dccp_hdr {int dccph_type; } ;


 scalar_t__ DCCP_CLOSED ;
 scalar_t__ DCCP_LISTEN ;





 size_t EAGAIN ;
 size_t EFAULT ;
 size_t ENOTCONN ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int RCV_SHUTDOWN ;
 int SOCK_DONE ;
 int current ;
 int dccp_finish_passive_close (struct sock*) ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 int dccp_packet_name (int) ;
 int dccp_pr_debug (char*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ signal_pending (int ) ;
 int sk_eat_skb (struct sock*,struct sk_buff*,int ) ;
 int sk_wait_data (struct sock*,long*) ;
 scalar_t__ skb_copy_datagram_iovec (struct sk_buff*,int ,int ,size_t) ;
 struct sk_buff* skb_peek (int *) ;
 size_t sock_error (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 size_t sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;

int dccp_recvmsg(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
   size_t len, int nonblock, int flags, int *addr_len)
{
 const struct dccp_hdr *dh;
 long timeo;

 lock_sock(sk);

 if (sk->sk_state == DCCP_LISTEN) {
  len = -ENOTCONN;
  goto out;
 }

 timeo = sock_rcvtimeo(sk, nonblock);

 do {
  struct sk_buff *skb = skb_peek(&sk->sk_receive_queue);

  if (skb == ((void*)0))
   goto verify_sock_status;

  dh = dccp_hdr(skb);

  switch (dh->dccph_type) {
  case 130:
  case 129:
   goto found_ok_skb;

  case 132:
  case 131:
   if (!(flags & MSG_PEEK))
    dccp_finish_passive_close(sk);

  case 128:
   dccp_pr_debug("found fin (%s) ok!\n",
          dccp_packet_name(dh->dccph_type));
   len = 0;
   goto found_fin_ok;
  default:
   dccp_pr_debug("packet_type=%s\n",
          dccp_packet_name(dh->dccph_type));
   sk_eat_skb(sk, skb, 0);
  }
verify_sock_status:
  if (sock_flag(sk, SOCK_DONE)) {
   len = 0;
   break;
  }

  if (sk->sk_err) {
   len = sock_error(sk);
   break;
  }

  if (sk->sk_shutdown & RCV_SHUTDOWN) {
   len = 0;
   break;
  }

  if (sk->sk_state == DCCP_CLOSED) {
   if (!sock_flag(sk, SOCK_DONE)) {



    len = -ENOTCONN;
    break;
   }
   len = 0;
   break;
  }

  if (!timeo) {
   len = -EAGAIN;
   break;
  }

  if (signal_pending(current)) {
   len = sock_intr_errno(timeo);
   break;
  }

  sk_wait_data(sk, &timeo);
  continue;
 found_ok_skb:
  if (len > skb->len)
   len = skb->len;
  else if (len < skb->len)
   msg->msg_flags |= MSG_TRUNC;

  if (skb_copy_datagram_iovec(skb, 0, msg->msg_iov, len)) {

   len = -EFAULT;
   break;
  }
 found_fin_ok:
  if (!(flags & MSG_PEEK))
   sk_eat_skb(sk, skb, 0);
  break;
 } while (1);
out:
 release_sock(sk);
 return len;
}
