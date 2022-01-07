
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_scp {scalar_t__ state; scalar_t__ persist; } ;


 scalar_t__ DN_CD ;
 scalar_t__ DN_CI ;
 struct dn_scp* DN_SK (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void dn_nsp_conn_ack(struct sock *sk, struct sk_buff *skb)
{
 struct dn_scp *scp = DN_SK(sk);

 if (scp->state == DN_CI) {
  scp->state = DN_CD;
  scp->persist = 0;
 }

 kfree_skb(skb);
}
