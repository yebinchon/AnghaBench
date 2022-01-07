
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*,int) ;scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {unsigned int truesize; int len; } ;


 int ENOMEM ;
 int SOCK_DEAD ;
 unsigned int atomic_read (int *) ;
 int sk_filter (struct sock*,struct sk_buff*) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,int) ;

__attribute__((used)) static __inline__ int dn_queue_skb(struct sock *sk, struct sk_buff *skb, int sig, struct sk_buff_head *queue)
{
 int err;
 int skb_len;




 if (atomic_read(&sk->sk_rmem_alloc) + skb->truesize >=
     (unsigned)sk->sk_rcvbuf) {
  err = -ENOMEM;
  goto out;
 }

 err = sk_filter(sk, skb);
 if (err)
  goto out;

 skb_len = skb->len;
 skb_set_owner_r(skb, sk);
 skb_queue_tail(queue, skb);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk, skb_len);
out:
 return err;
}
