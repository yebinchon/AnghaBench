
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {scalar_t__ check; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; scalar_t__ rxhash; } ;
struct iphdr {scalar_t__ protocol; int check; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ check; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int csum_replace4 (int *,int ,int ) ;
 int inet_proto_csum_replace4 (scalar_t__*,struct sk_buff*,int ,int ,int) ;
 scalar_t__ likely (int) ;
 int skb_transport_offset (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static void set_ip_addr(struct sk_buff *skb, struct iphdr *nh,
    __be32 *addr, __be32 new_addr)
{
 int transport_len = skb->len - skb_transport_offset(skb);

 if (nh->protocol == IPPROTO_TCP) {
  if (likely(transport_len >= sizeof(struct tcphdr)))
   inet_proto_csum_replace4(&tcp_hdr(skb)->check, skb,
       *addr, new_addr, 1);
 } else if (nh->protocol == IPPROTO_UDP) {
  if (likely(transport_len >= sizeof(struct udphdr))) {
   struct udphdr *uh = udp_hdr(skb);

   if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
    inet_proto_csum_replace4(&uh->check, skb,
        *addr, new_addr, 1);
    if (!uh->check)
     uh->check = CSUM_MANGLED_0;
   }
  }
 }

 csum_replace4(&nh->check, *addr, new_addr);
 skb->rxhash = 0;
 *addr = new_addr;
}
