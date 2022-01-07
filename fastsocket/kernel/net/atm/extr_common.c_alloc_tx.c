
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; int sk_sndbuf; } ;
struct sk_buff {int truesize; } ;
struct atm_vcc {int dummy; } ;


 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int atm_may_send (struct atm_vcc*,unsigned int) ;
 int atomic_add (int ,int *) ;
 int pr_debug (char*,scalar_t__,unsigned int,...) ;
 int schedule () ;
 struct sock* sk_atm (struct atm_vcc*) ;
 scalar_t__ sk_wmem_alloc_get (struct sock*) ;

__attribute__((used)) static struct sk_buff *alloc_tx(struct atm_vcc *vcc,unsigned int size)
{
 struct sk_buff *skb;
 struct sock *sk = sk_atm(vcc);

 if (sk_wmem_alloc_get(sk) && !atm_may_send(vcc, size)) {
  pr_debug("Sorry: wmem_alloc = %d, size = %d, sndbuf = %d\n",
   sk_wmem_alloc_get(sk), size,
   sk->sk_sndbuf);
  return ((void*)0);
 }
 while (!(skb = alloc_skb(size, GFP_KERNEL)))
  schedule();
 pr_debug("AlTx %d += %d\n", sk_wmem_alloc_get(sk), skb->truesize);
 atomic_add(skb->truesize, &sk->sk_wmem_alloc);
 return skb;
}
