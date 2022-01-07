
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff {scalar_t__ truesize; } ;
struct atm_vcc {TYPE_1__* stats; } ;
typedef int gfp_t ;
struct TYPE_2__ {int rx_drop; } ;


 struct sk_buff* alloc_skb (int,int ) ;
 int atm_force_charge (struct atm_vcc*,int) ;
 int atm_guess_pdu2truesize (int) ;
 int atm_return (struct atm_vcc*,int) ;
 int atomic_add (scalar_t__,int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct sock* sk_atm (struct atm_vcc*) ;

struct sk_buff *atm_alloc_charge(struct atm_vcc *vcc,int pdu_size,
    gfp_t gfp_flags)
{
 struct sock *sk = sk_atm(vcc);
 int guess = atm_guess_pdu2truesize(pdu_size);

 atm_force_charge(vcc,guess);
 if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf) {
  struct sk_buff *skb = alloc_skb(pdu_size,gfp_flags);

  if (skb) {
   atomic_add(skb->truesize-guess,
       &sk->sk_rmem_alloc);
   return skb;
  }
 }
 atm_return(vcc,guess);
 atomic_inc(&vcc->stats->rx_drop);
 return ((void*)0);
}
