
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct lec_priv {TYPE_1__* lane2_ops; } ;
struct lec_arp_table {int sizeoftlvs; int * tlvs; } ;
struct TYPE_2__ {int (* associate_indicator ) (struct net_device*,int const*,int const*,int) ;} ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int const*,int,int ) ;
 struct lec_arp_table* lec_arp_find (struct lec_priv*,int const*) ;
 struct lec_priv* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;
 int stub1 (struct net_device*,int const*,int const*,int) ;

__attribute__((used)) static void lane2_associate_ind(struct net_device *dev, const u8 *mac_addr,
    const u8 *tlvs, u32 sizeoftlvs)
{



 struct lec_priv *priv = netdev_priv(dev);
 if (priv->lane2_ops && priv->lane2_ops->associate_indicator) {
  priv->lane2_ops->associate_indicator(dev, mac_addr,
           tlvs, sizeoftlvs);
 }
 return;
}
