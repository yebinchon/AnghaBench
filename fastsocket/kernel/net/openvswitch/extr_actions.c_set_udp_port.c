
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ rxhash; } ;
typedef int __be16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int set_tp_port (struct sk_buff*,int *,int ,scalar_t__*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static void set_udp_port(struct sk_buff *skb, __be16 *port, __be16 new_port)
{
 struct udphdr *uh = udp_hdr(skb);

 if (uh->check && skb->ip_summed != CHECKSUM_PARTIAL) {
  set_tp_port(skb, port, new_port, &uh->check);

  if (!uh->check)
   uh->check = CSUM_MANGLED_0;
 } else {
  *port = new_port;
  skb->rxhash = 0;
 }
}
