
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int txbeaconringdma; int txhpringdma; int txvopringdma; int txvipringdma; int txbepringdma; int txbkpringdma; int txmapringdma; } ;
struct net_device {int dummy; } ;


 int TX_BEACON_RING_ADDR ;
 int TX_BEPRIORITY_RING_ADDR ;
 int TX_BKPRIORITY_RING_ADDR ;
 int TX_HIGHPRIORITY_RING_ADDR ;
 int TX_MANAGEPRIORITY_RING_ADDR ;
 int TX_VIPRIORITY_RING_ADDR ;
 int TX_VOPRIORITY_RING_ADDR ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void set_nic_txring(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 write_nic_dword(dev, TX_MANAGEPRIORITY_RING_ADDR, priv->txmapringdma);
 write_nic_dword(dev, TX_BKPRIORITY_RING_ADDR, priv->txbkpringdma);
 write_nic_dword(dev, TX_BEPRIORITY_RING_ADDR, priv->txbepringdma);
 write_nic_dword(dev, TX_VIPRIORITY_RING_ADDR, priv->txvipringdma);
 write_nic_dword(dev, TX_VOPRIORITY_RING_ADDR, priv->txvopringdma);
 write_nic_dword(dev, TX_HIGHPRIORITY_RING_ADDR, priv->txhpringdma);
 write_nic_dword(dev, TX_BEACON_RING_ADDR, priv->txbeaconringdma);
}
