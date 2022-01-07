
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct sock {TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int peeked; int users; } ;


 int EAGAIN ;
 unsigned int MSG_DONTWAIT ;
 unsigned int MSG_PEEK ;
 int __skb_unlink (struct sk_buff*,TYPE_1__*) ;
 int atomic_inc (int *) ;
 struct sk_buff* skb_peek (TYPE_1__*) ;
 int sock_error (struct sock*) ;
 long sock_rcvtimeo (struct sock*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_packet (struct sock*,int*,long*) ;

struct sk_buff *__skb_recv_datagram(struct sock *sk, unsigned flags,
        int *peeked, int *err)
{
 struct sk_buff *skb;
 long timeo;



 int error = sock_error(sk);

 if (error)
  goto no_packet;

 timeo = sock_rcvtimeo(sk, flags & MSG_DONTWAIT);

 do {






  unsigned long cpu_flags;

  spin_lock_irqsave(&sk->sk_receive_queue.lock, cpu_flags);
  skb = skb_peek(&sk->sk_receive_queue);
  if (skb) {
   *peeked = skb->peeked;
   if (flags & MSG_PEEK) {
    skb->peeked = 1;
    atomic_inc(&skb->users);
   } else
    __skb_unlink(skb, &sk->sk_receive_queue);
  }
  spin_unlock_irqrestore(&sk->sk_receive_queue.lock, cpu_flags);

  if (skb)
   return skb;


  error = -EAGAIN;
  if (!timeo)
   goto no_packet;

 } while (!wait_for_packet(sk, err, &timeo));

 return ((void*)0);

no_packet:
 *err = error;
 return ((void*)0);
}
