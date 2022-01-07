
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {unsigned int len; } ;


 int IS_UDPLITE (struct sock*) ;
 int UDP_INC_STATS_BH (int ,int ,int ) ;
 int UDP_MIB_INERRORS ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_mem_reclaim_partial (struct sock*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int sock_net (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ udp_lib_checksum_complete (struct sk_buff*) ;

__attribute__((used)) static unsigned int first_packet_length(struct sock *sk)
{
 struct sk_buff_head list_kill, *rcvq = &sk->sk_receive_queue;
 struct sk_buff *skb;
 unsigned int res;

 __skb_queue_head_init(&list_kill);

 spin_lock_bh(&rcvq->lock);
 while ((skb = skb_peek(rcvq)) != ((void*)0) &&
  udp_lib_checksum_complete(skb)) {
  UDP_INC_STATS_BH(sock_net(sk), UDP_MIB_INERRORS,
     IS_UDPLITE(sk));
  __skb_unlink(skb, rcvq);
  __skb_queue_tail(&list_kill, skb);
 }
 res = skb ? skb->len : 0;
 spin_unlock_bh(&rcvq->lock);

 if (!skb_queue_empty(&list_kill)) {
  lock_sock(sk);
  __skb_queue_purge(&list_kill);
  sk_mem_reclaim_partial(sk);
  release_sock(sk);
 }
 return res;
}
