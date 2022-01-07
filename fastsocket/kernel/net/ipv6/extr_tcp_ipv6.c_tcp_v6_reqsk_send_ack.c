
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int ts_recent; int rcv_wnd; } ;
struct TYPE_4__ {int daddr; } ;
struct TYPE_3__ {scalar_t__ rcv_isn; scalar_t__ snt_isn; } ;


 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 TYPE_1__* tcp_rsk (struct request_sock*) ;
 int tcp_v6_md5_do_lookup (struct sock*,int *) ;
 int tcp_v6_send_ack (struct sk_buff*,scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void tcp_v6_reqsk_send_ack(struct sock *sk, struct sk_buff *skb,
      struct request_sock *req)
{
 tcp_v6_send_ack(skb, tcp_rsk(req)->snt_isn + 1, tcp_rsk(req)->rcv_isn + 1, req->rcv_wnd, req->ts_recent,
   tcp_v6_md5_do_lookup(sk, &ipv6_hdr(skb)->daddr));
}
