
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ irq_enabled; } ;
struct net_device {int dummy; } ;


 int INTA_MASK ;
 int force_pci_posting (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

__attribute__((used)) static void rtl8192_irq_disable(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

 write_nic_dword(dev,INTA_MASK,0);
 force_pci_posting(dev);
 priv->irq_enabled = 0;
}
