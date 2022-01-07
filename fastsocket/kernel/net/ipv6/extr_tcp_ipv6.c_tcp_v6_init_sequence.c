
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int __u32 ;
struct TYPE_6__ {int s6_addr32; } ;
struct TYPE_5__ {int s6_addr32; } ;
struct TYPE_8__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;
struct TYPE_7__ {int source; int dest; } ;


 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 int secure_tcpv6_sequence_number (int ,int ,int ,int ) ;
 TYPE_3__* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static __u32 tcp_v6_init_sequence(struct sk_buff *skb)
{
 return secure_tcpv6_sequence_number(ipv6_hdr(skb)->daddr.s6_addr32,
         ipv6_hdr(skb)->saddr.s6_addr32,
         tcp_hdr(skb)->dest,
         tcp_hdr(skb)->source);
}
