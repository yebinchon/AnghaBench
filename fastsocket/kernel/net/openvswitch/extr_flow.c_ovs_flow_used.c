
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tcphdr {int dummy; } ;
struct TYPE_5__ {scalar_t__ proto; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ ip; TYPE_1__ eth; } ;
struct sw_flow {int tcp_flags; int lock; int byte_count; int packet_count; int used; TYPE_3__ key; } ;
struct sk_buff {scalar_t__ len; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 int TCP_FLAGS_OFFSET ;
 int TCP_FLAG_MASK ;
 scalar_t__ htons (int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tcp_hdr (struct sk_buff*) ;

void ovs_flow_used(struct sw_flow *flow, struct sk_buff *skb)
{
 u8 tcp_flags = 0;

 if ((flow->key.eth.type == htons(ETH_P_IP) ||
      flow->key.eth.type == htons(ETH_P_IPV6)) &&
     flow->key.ip.proto == IPPROTO_TCP &&
     likely(skb->len >= skb_transport_offset(skb) + sizeof(struct tcphdr))) {
  u8 *tcp = (u8 *)tcp_hdr(skb);
  tcp_flags = *(tcp + TCP_FLAGS_OFFSET) & TCP_FLAG_MASK;
 }

 spin_lock(&flow->lock);
 flow->used = jiffies;
 flow->packet_count++;
 flow->byte_count += skb->len;
 flow->tcp_flags |= tcp_flags;
 spin_unlock(&flow->lock);
}
