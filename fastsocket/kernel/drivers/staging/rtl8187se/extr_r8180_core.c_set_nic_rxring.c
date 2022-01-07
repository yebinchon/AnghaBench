
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int rxringdma; } ;
struct net_device {int dummy; } ;


 int PGSELECT ;
 int PGSELECT_PG_SHIFT ;
 int RXRING_ADDR ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void set_nic_rxring(struct net_device *dev)
{
 u8 pgreg;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 pgreg=read_nic_byte(dev, PGSELECT);
 write_nic_byte(dev, PGSELECT, pgreg &~ (1<<PGSELECT_PG_SHIFT));

 write_nic_dword(dev, RXRING_ADDR,priv->rxringdma);
}
