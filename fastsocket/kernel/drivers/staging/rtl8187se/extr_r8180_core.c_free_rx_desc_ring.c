
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8180_priv {int rxringcount; int rxbuffersize; int rxbuffer; int rxringdma; int rxring; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int buffer_free (struct net_device*,int *,int ,int ) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;

void free_rx_desc_ring(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct pci_dev *pdev = priv->pdev;
 int count = priv->rxringcount;

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->rxring, priv->rxringdma);

 buffer_free(dev,&(priv->rxbuffer),priv->rxbuffersize,0);
}
