
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; } ;
struct sk_buff {int len; } ;
struct atm_vcc {int dummy; } ;


 struct sock* sk_atm (struct atm_vcc*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*,int ) ;

__attribute__((used)) static void atm_push_raw(struct atm_vcc *vcc,struct sk_buff *skb)
{
 if (skb) {
  struct sock *sk = sk_atm(vcc);

  skb_queue_tail(&sk->sk_receive_queue, skb);
  sk->sk_data_ready(sk, skb->len);
 }
}
