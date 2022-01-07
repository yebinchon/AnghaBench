
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dccph_type; } ;
struct TYPE_4__ {int dccpd_seq; } ;
struct TYPE_3__ {int dccps_osr; } ;


 int DCCP_OPEN ;
 int DCCP_PARTOPEN ;




 int DCCP_RESPOND ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int ICSK_TIME_DACK ;
 int __dccp_rcv_established (struct sock*,struct sk_buff*,struct dccp_hdr const*,unsigned int const) ;
 int dccp_set_state (struct sock*,int ) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;

__attribute__((used)) static int dccp_rcv_respond_partopen_state_process(struct sock *sk,
         struct sk_buff *skb,
         const struct dccp_hdr *dh,
         const unsigned len)
{
 int queued = 0;

 switch (dh->dccph_type) {
 case 128:
  inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);
  break;
 case 130:
  if (sk->sk_state == DCCP_RESPOND)
   break;
 case 129:
 case 131:
  if (sk->sk_state == DCCP_PARTOPEN)
   inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);

  dccp_sk(sk)->dccps_osr = DCCP_SKB_CB(skb)->dccpd_seq;
  dccp_set_state(sk, DCCP_OPEN);

  if (dh->dccph_type == 129 ||
      dh->dccph_type == 130) {
   __dccp_rcv_established(sk, skb, dh, len);
   queued = 1;

  }
  break;
 }

 return queued;
}
