
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct dn_skb_cb {unsigned short segnum; } ;
struct dn_scp {scalar_t__ flowloc_sw; int numdat_rcv; } ;
typedef int __le16 ;


 scalar_t__ DN_DONTSEND ;
 scalar_t__ DN_SEND ;
 struct dn_scp* DN_SK (struct sock*) ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int SIGIO ;
 scalar_t__ dn_congested (struct sock*) ;
 int dn_nsp_send_data_ack (struct sock*) ;
 int dn_nsp_send_link (struct sock*,scalar_t__,int ) ;
 scalar_t__ dn_queue_skb (struct sock*,struct sk_buff*,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned short le16_to_cpu (int ) ;
 int seq_add (int *,int) ;
 scalar_t__ seq_next (int ,unsigned short) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void dn_nsp_data(struct sock *sk, struct sk_buff *skb)
{
 int queued = 0;
 unsigned short segnum;
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 struct dn_scp *scp = DN_SK(sk);

 if (skb->len < 2)
  goto out;

 cb->segnum = segnum = le16_to_cpu(*(__le16 *)skb->data);
 skb_pull(skb, 2);

 if (seq_next(scp->numdat_rcv, segnum)) {
  if (dn_queue_skb(sk, skb, SIGIO, &sk->sk_receive_queue) == 0) {
   seq_add(&scp->numdat_rcv, 1);
   queued = 1;
  }

  if ((scp->flowloc_sw == DN_SEND) && dn_congested(sk)) {
   scp->flowloc_sw = DN_DONTSEND;
   dn_nsp_send_link(sk, DN_DONTSEND, 0);
  }
 }

 dn_nsp_send_data_ack(sk);
out:
 if (!queued)
  kfree_skb(skb);
}
