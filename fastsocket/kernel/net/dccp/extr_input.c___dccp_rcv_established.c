
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_osr; int dccps_role; } ;
struct dccp_hdr {int dummy; } ;
struct TYPE_4__ {int dccpd_seq; } ;
struct TYPE_3__ {int dccph_type; } ;


 int DCCP_INC_STATS_BH (int ) ;
 int DCCP_MIB_INERRS ;
 int DCCP_PKT_SYNCACK ;
 int DCCP_ROLE_CLIENT ;
 int DCCP_ROLE_LISTEN ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int __kfree_skb (struct sk_buff*) ;
 int dccp_delta_seqno (int ,int ) ;
 int dccp_enqueue_skb (struct sock*,struct sk_buff*) ;
 TYPE_1__* dccp_hdr (struct sk_buff*) ;
 int dccp_rcv_close (struct sock*,struct sk_buff*) ;
 int dccp_rcv_closereq (struct sock*,struct sk_buff*) ;
 int dccp_rcv_reset (struct sock*,struct sk_buff*) ;
 int dccp_send_sync (struct sock*,int ,int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static int __dccp_rcv_established(struct sock *sk, struct sk_buff *skb,
      const struct dccp_hdr *dh, const unsigned len)
{
 struct dccp_sock *dp = dccp_sk(sk);

 switch (dccp_hdr(skb)->dccph_type) {
 case 132:
 case 133:





  dccp_enqueue_skb(sk, skb);
  return 0;
 case 136:
  goto discard;
 case 130:
  dccp_rcv_reset(sk, skb);
  return 0;
 case 134:
  if (dccp_rcv_closereq(sk, skb))
   return 0;
  goto discard;
 case 135:
  if (dccp_rcv_close(sk, skb))
   return 0;
  goto discard;
 case 131:
  if (dp->dccps_role != DCCP_ROLE_LISTEN)
   goto send_sync;
  goto check_seq;
 case 129:
  if (dp->dccps_role != DCCP_ROLE_CLIENT)
   goto send_sync;
check_seq:
  if (dccp_delta_seqno(dp->dccps_osr,
         DCCP_SKB_CB(skb)->dccpd_seq) >= 0) {
send_sync:
   dccp_send_sync(sk, DCCP_SKB_CB(skb)->dccpd_seq,
           128);
  }
  break;
 case 128:
  dccp_send_sync(sk, DCCP_SKB_CB(skb)->dccpd_seq,
          DCCP_PKT_SYNCACK);







  goto discard;
 }

 DCCP_INC_STATS_BH(DCCP_MIB_INERRS);
discard:
 __kfree_skb(skb);
 return 0;
}
