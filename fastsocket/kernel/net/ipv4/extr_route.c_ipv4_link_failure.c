
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dst; } ;
struct rtable {TYPE_1__ u; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_HOST_UNREACH ;
 int dst_set_expires (int *,int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static void ipv4_link_failure(struct sk_buff *skb)
{
 struct rtable *rt;

 icmp_send(skb, ICMP_DEST_UNREACH, ICMP_HOST_UNREACH, 0);

 rt = skb_rtable(skb);
 if (rt)
  dst_set_expires(&rt->u.dst, 0);
}
