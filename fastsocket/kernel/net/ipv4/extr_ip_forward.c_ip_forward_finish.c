
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ip_options {int optlen; } ;
struct TYPE_4__ {struct ip_options opt; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_OUTFORWDATAGRAMS ;
 int IP_INC_STATS_BH (int ,int ) ;
 int dev_net (int ) ;
 int dst_output (struct sk_buff*) ;
 int ip_forward_options (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ip_forward_finish(struct sk_buff *skb)
{
 struct ip_options * opt = &(IPCB(skb)->opt);

 IP_INC_STATS_BH(dev_net(skb_dst(skb)->dev), IPSTATS_MIB_OUTFORWDATAGRAMS);

 if (unlikely(opt->optlen))
  ip_forward_options(skb);

 return dst_output(skb);
}
