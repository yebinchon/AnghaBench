
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int ip_summed; int data_len; int len; TYPE_1__* sk; struct net_device* dev; } ;
struct net_device {long features; TYPE_2__* ethtool_ops; } ;
struct ethtool_drvinfo {int driver; } ;
struct TYPE_4__ {int (* get_drvinfo ) (struct net_device*,struct ethtool_drvinfo*) ;} ;
struct TYPE_3__ {long sk_route_caps; } ;


 int WARN (int,char*,int ,long,long,int ,int ,int ) ;
 int stub1 (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static void skb_warn_bad_offload(const struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct ethtool_drvinfo info = {};

 if (dev && dev->ethtool_ops && dev->ethtool_ops->get_drvinfo)
  dev->ethtool_ops->get_drvinfo(dev, &info);

 WARN(1, "%s: caps=(0x%lx, 0x%lx) len=%d data_len=%d "
  "ip_summed=%d",
      info.driver, dev ? dev->features : 0L,
      skb->sk ? skb->sk->sk_route_caps : 0L,
      skb->len, skb->data_len, skb->ip_summed);
}
