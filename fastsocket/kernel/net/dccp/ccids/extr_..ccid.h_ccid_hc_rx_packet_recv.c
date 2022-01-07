
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_rx_packet_recv ) (struct sock*,struct sk_buff*) ;} ;


 int stub1 (struct sock*,struct sk_buff*) ;

__attribute__((used)) static inline void ccid_hc_rx_packet_recv(struct ccid *ccid, struct sock *sk,
       struct sk_buff *skb)
{
 if (ccid->ccid_ops->ccid_hc_rx_packet_recv != ((void*)0))
  ccid->ccid_ops->ccid_hc_rx_packet_recv(sk, skb);
}
