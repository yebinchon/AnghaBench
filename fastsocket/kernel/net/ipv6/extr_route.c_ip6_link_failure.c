
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct TYPE_4__ {int dst; } ;
struct rt6_info {int rt6i_flags; TYPE_1__* rt6i_node; TYPE_2__ u; } ;
struct TYPE_3__ {int fn_sernum; } ;


 int ICMPV6_ADDR_UNREACH ;
 int ICMPV6_DEST_UNREACH ;
 int RTF_CACHE ;
 int RTF_DEFAULT ;
 int RTF_EXPIRES ;
 int dst_set_expires (int *,int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ skb_dst (struct sk_buff*) ;

__attribute__((used)) static void ip6_link_failure(struct sk_buff *skb)
{
 struct rt6_info *rt;

 icmpv6_send(skb, ICMPV6_DEST_UNREACH, ICMPV6_ADDR_UNREACH, 0, skb->dev);

 rt = (struct rt6_info *) skb_dst(skb);
 if (rt) {
  if (rt->rt6i_flags&RTF_CACHE) {
   dst_set_expires(&rt->u.dst, 0);
   rt->rt6i_flags |= RTF_EXPIRES;
  } else if (rt->rt6i_node && (rt->rt6i_flags & RTF_DEFAULT))
   rt->rt6i_node->fn_sernum = -1;
 }
}
