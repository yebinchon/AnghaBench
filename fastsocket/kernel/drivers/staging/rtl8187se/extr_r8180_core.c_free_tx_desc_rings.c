
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8180_priv {int txringcount; int txbeaconcount; int txbuffsize; int txbeaconbufs; int txbeaconringdma; int txbeaconring; int txhpbufs; int txhpringdma; int txhpring; int txvopbufs; int txvopringdma; int txvopring; int txvipbufs; int txvipringdma; int txvipring; int txbepbufs; int txbepringdma; int txbepring; int txbkpbufs; int txbkpringdma; int txbkpring; int txmapbufs; int txmapringdma; int txmapring; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int buffer_free (struct net_device*,int *,int ,int) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;

void free_tx_desc_rings(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct pci_dev *pdev=priv->pdev;
 int count = priv->txringcount;

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txmapring, priv->txmapringdma);
 buffer_free(dev,&(priv->txmapbufs),priv->txbuffsize,1);

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txbkpring, priv->txbkpringdma);
 buffer_free(dev,&(priv->txbkpbufs),priv->txbuffsize,1);

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txbepring, priv->txbepringdma);
 buffer_free(dev,&(priv->txbepbufs),priv->txbuffsize,1);

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txvipring, priv->txvipringdma);
 buffer_free(dev,&(priv->txvipbufs),priv->txbuffsize,1);

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txvopring, priv->txvopringdma);
 buffer_free(dev,&(priv->txvopbufs),priv->txbuffsize,1);

 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txhpring, priv->txhpringdma);
 buffer_free(dev,&(priv->txhpbufs),priv->txbuffsize,1);

 count = priv->txbeaconcount;
 pci_free_consistent(pdev, sizeof(u32)*8*count+256,
       priv->txbeaconring, priv->txbeaconringdma);
 buffer_free(dev,&(priv->txbeaconbufs),priv->txbuffsize,1);
}
