
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 int EACCES ;
 int ICMP_DEST_UNREACH ;
 int ICMP_HOST_ANO ;
 int ICMP_NET_ANO ;
 scalar_t__ IPPROTO_ICMP ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;

void cipso_v4_error(struct sk_buff *skb, int error, u32 gateway)
{
 if (ip_hdr(skb)->protocol == IPPROTO_ICMP || error != -EACCES)
  return;

 if (gateway)
  icmp_send(skb, ICMP_DEST_UNREACH, ICMP_NET_ANO, 0);
 else
  icmp_send(skb, ICMP_DEST_UNREACH, ICMP_HOST_ANO, 0);
}
