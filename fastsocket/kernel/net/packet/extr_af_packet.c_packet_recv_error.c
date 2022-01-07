
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ee_errno; } ;
struct sock_exterr_skb {TYPE_3__ ee; } ;
struct TYPE_4__ {int lock; } ;
struct sock {TYPE_1__ sk_error_queue; int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct sk_buff {int len; } ;
struct msghdr {int msg_flags; int msg_iov; } ;


 int EAGAIN ;
 int MSG_ERRQUEUE ;
 int MSG_TRUNC ;
 int PACKET_TX_TIMESTAMP ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SOL_PACKET ;
 int kfree_skb (struct sk_buff*) ;
 int put_cmsg (struct msghdr*,int ,int ,int,TYPE_3__*) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,int) ;
 struct sk_buff* skb_dequeue (TYPE_1__*) ;
 struct sk_buff* skb_peek (TYPE_1__*) ;
 int sock_recv_timestamp (struct msghdr*,struct sock*,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int packet_recv_error(struct sock *sk, struct msghdr *msg, int len)
{
 struct sock_exterr_skb *serr;
 struct sk_buff *skb, *skb2;
 int copied, err;

 err = -EAGAIN;
 skb = skb_dequeue(&sk->sk_error_queue);
 if (skb == ((void*)0))
  goto out;

 copied = skb->len;
 if (copied > len) {
  msg->msg_flags |= MSG_TRUNC;
  copied = len;
 }
 err = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);
 if (err)
  goto out_free_skb;

 sock_recv_timestamp(msg, sk, skb);

 serr = SKB_EXT_ERR(skb);
 put_cmsg(msg, SOL_PACKET, PACKET_TX_TIMESTAMP,
   sizeof(serr->ee), &serr->ee);

 msg->msg_flags |= MSG_ERRQUEUE;
 err = copied;


 spin_lock_bh(&sk->sk_error_queue.lock);
 sk->sk_err = 0;
 if ((skb2 = skb_peek(&sk->sk_error_queue)) != ((void*)0)) {
  sk->sk_err = SKB_EXT_ERR(skb2)->ee.ee_errno;
  spin_unlock_bh(&sk->sk_error_queue.lock);
  sk->sk_error_report(sk);
 } else
  spin_unlock_bh(&sk->sk_error_queue.lock);

out_free_skb:
 kfree_skb(skb);
out:
 return err;
}
