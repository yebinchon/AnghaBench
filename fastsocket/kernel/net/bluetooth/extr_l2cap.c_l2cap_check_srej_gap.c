
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ tx_seq; int sar; } ;
struct TYPE_3__ {int buffer_seq_srej; } ;


 int L2CAP_CTRL_SAR_SHIFT ;
 int SREJ_QUEUE (struct sock*) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sar_reassembly_sdu (struct sock*,struct sk_buff*,int) ;
 struct sk_buff* skb_dequeue (int ) ;
 struct sk_buff* skb_peek (int ) ;

__attribute__((used)) static void l2cap_check_srej_gap(struct sock *sk, u8 tx_seq)
{
 struct sk_buff *skb;
 u16 control = 0;

 while((skb = skb_peek(SREJ_QUEUE(sk)))) {
  if (bt_cb(skb)->tx_seq != tx_seq)
   break;

  skb = skb_dequeue(SREJ_QUEUE(sk));
  control |= bt_cb(skb)->sar << L2CAP_CTRL_SAR_SHIFT;
  l2cap_sar_reassembly_sdu(sk, skb, control);
  l2cap_pi(sk)->buffer_seq_srej =
   (l2cap_pi(sk)->buffer_seq_srej + 1) % 64;
  tx_seq++;
 }
}
