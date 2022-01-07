
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ qlen; } ;
struct sock {int sk_state; TYPE_2__ sk_write_queue; TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; int msg_iov; } ;
struct kiocb {int dummy; } ;
struct dccp_sock {size_t dccps_mss_cache; } ;
struct TYPE_3__ {size_t max_header; } ;


 int DCCPF_OPEN ;
 int DCCPF_PARTOPEN ;
 int EAGAIN ;
 int EMSGSIZE ;
 int const MSG_DONTWAIT ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_write_xmit (struct sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy_fromiovec (int ,int ,size_t) ;
 int release_sock (struct sock*) ;
 int sk_stream_wait_connect (struct sock*,long*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int const,int*) ;
 long sock_sndtimeo (struct sock*,int const) ;
 scalar_t__ sysctl_dccp_tx_qlen ;

int dccp_sendmsg(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
   size_t len)
{
 const struct dccp_sock *dp = dccp_sk(sk);
 const int flags = msg->msg_flags;
 const int noblock = flags & MSG_DONTWAIT;
 struct sk_buff *skb;
 int rc, size;
 long timeo;

 if (len > dp->dccps_mss_cache)
  return -EMSGSIZE;

 lock_sock(sk);

 if (sysctl_dccp_tx_qlen &&
     (sk->sk_write_queue.qlen >= sysctl_dccp_tx_qlen)) {
  rc = -EAGAIN;
  goto out_release;
 }

 timeo = sock_sndtimeo(sk, noblock);






 if ((1 << sk->sk_state) & ~(DCCPF_OPEN | DCCPF_PARTOPEN))
  if ((rc = sk_stream_wait_connect(sk, &timeo)) != 0)
   goto out_release;

 size = sk->sk_prot->max_header + len;
 release_sock(sk);
 skb = sock_alloc_send_skb(sk, size, noblock, &rc);
 lock_sock(sk);
 if (skb == ((void*)0))
  goto out_release;

 skb_reserve(skb, sk->sk_prot->max_header);
 rc = memcpy_fromiovec(skb_put(skb, len), msg->msg_iov, len);
 if (rc != 0)
  goto out_discard;

 skb_queue_tail(&sk->sk_write_queue, skb);
 dccp_write_xmit(sk,0);
out_release:
 release_sock(sk);
 return rc ? : len;
out_discard:
 kfree_skb(skb);
 goto out_release;
}
