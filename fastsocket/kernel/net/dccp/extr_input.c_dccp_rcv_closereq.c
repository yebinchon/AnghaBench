
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int dccpd_seq; } ;
struct TYPE_3__ {scalar_t__ dccps_role; } ;


 int DCCP_CLOSING ;



 int DCCP_PKT_SYNC ;

 scalar_t__ DCCP_ROLE_CLIENT ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int POLL_HUP ;
 int SOCK_WAKE_WAITD ;
 int dccp_fin (struct sock*,struct sk_buff*) ;
 int dccp_send_close (struct sock*,int ) ;
 int dccp_send_sync (struct sock*,int ,int ) ;
 int dccp_set_state (struct sock*,int) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;

__attribute__((used)) static int dccp_rcv_closereq(struct sock *sk, struct sk_buff *skb)
{
 int queued = 0;







 if (dccp_sk(sk)->dccps_role != DCCP_ROLE_CLIENT) {
  dccp_send_sync(sk, DCCP_SKB_CB(skb)->dccpd_seq, DCCP_PKT_SYNC);
  return queued;
 }


 switch (sk->sk_state) {
 case 128:
  dccp_send_close(sk, 0);
  dccp_set_state(sk, DCCP_CLOSING);
  break;
 case 131:
 case 130:

  queued = 1;
  dccp_fin(sk, skb);
  dccp_set_state(sk, 129);

 case 129:
  sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_HUP);
 }
 return queued;
}
