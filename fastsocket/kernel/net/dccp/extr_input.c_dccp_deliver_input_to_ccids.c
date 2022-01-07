
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qlen; } ;
struct sock {int sk_shutdown; TYPE_1__ sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_hc_tx_ccid; int dccps_hc_rx_ccid; } ;


 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int ccid_hc_rx_packet_recv (int ,struct sock*,struct sk_buff*) ;
 int ccid_hc_tx_packet_recv (int ,struct sock*,struct sk_buff*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static void dccp_deliver_input_to_ccids(struct sock *sk, struct sk_buff *skb)
{
 const struct dccp_sock *dp = dccp_sk(sk);


 if (!(sk->sk_shutdown & RCV_SHUTDOWN))
  ccid_hc_rx_packet_recv(dp->dccps_hc_rx_ccid, sk, skb);




 if (sk->sk_write_queue.qlen > 0 || !(sk->sk_shutdown & SEND_SHUTDOWN))
  ccid_hc_tx_packet_recv(dp->dccps_hc_tx_ccid, sk, skb);
}
