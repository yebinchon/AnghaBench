
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int __u32 ;
struct TYPE_4__ {int saddr; int daddr; } ;
struct TYPE_3__ {int source; int dest; } ;


 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int secure_tcp_sequence_number (int ,int ,int ,int ) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline __u32 tcp_v4_init_sequence(struct sk_buff *skb)
{
 return secure_tcp_sequence_number(ip_hdr(skb)->daddr,
       ip_hdr(skb)->saddr,
       tcp_hdr(skb)->dest,
       tcp_hdr(skb)->source);
}
