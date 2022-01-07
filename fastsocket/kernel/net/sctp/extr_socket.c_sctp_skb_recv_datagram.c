
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct sock {int sk_shutdown; TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int users; } ;


 int EAGAIN ;
 int MAX_SCHEDULE_TIMEOUT ;
 int MSG_PEEK ;
 int RCV_SHUTDOWN ;
 int SCTP_DEBUG_PRINTK (char*,long,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ sctp_wait_for_packet (struct sock*,int*,long*) ;
 struct sk_buff* skb_dequeue (TYPE_1__*) ;
 struct sk_buff* skb_peek (TYPE_1__*) ;
 int sock_error (struct sock*) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct sk_buff *sctp_skb_recv_datagram(struct sock *sk, int flags,
           int noblock, int *err)
{
 int error;
 struct sk_buff *skb;
 long timeo;

 timeo = sock_rcvtimeo(sk, noblock);

 SCTP_DEBUG_PRINTK("Timeout: timeo: %ld, MAX: %ld.\n",
     timeo, MAX_SCHEDULE_TIMEOUT);

 do {







  if (flags & MSG_PEEK) {
   spin_lock_bh(&sk->sk_receive_queue.lock);
   skb = skb_peek(&sk->sk_receive_queue);
   if (skb)
    atomic_inc(&skb->users);
   spin_unlock_bh(&sk->sk_receive_queue.lock);
  } else {
   skb = skb_dequeue(&sk->sk_receive_queue);
  }

  if (skb)
   return skb;


  error = sock_error(sk);
  if (error)
   goto no_packet;

  if (sk->sk_shutdown & RCV_SHUTDOWN)
   break;


  error = -EAGAIN;
  if (!timeo)
   goto no_packet;
 } while (sctp_wait_for_packet(sk, err, &timeo) == 0);

 return ((void*)0);

no_packet:
 *err = error;
 return ((void*)0);
}
