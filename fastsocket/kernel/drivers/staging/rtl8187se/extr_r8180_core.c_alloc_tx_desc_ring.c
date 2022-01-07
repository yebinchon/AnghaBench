
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8180_priv {int txmapringdma; int* txmapring; int txbkpringdma; int* txbkpring; int txbepringdma; int* txbepring; int txvipringdma; int* txvipring; int txvopringdma; int* txvopring; int txhpringdma; int* txhpring; int txbeaconringdma; int* txbeaconring; int txbeaconbufs; int txhpbufs; int txvopbufs; int txvipbufs; int txbepbufs; int txbkpbufs; int txmapbufs; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 int DMESGE (char*) ;
 short ENOMEM ;







 int WARN (int,char*) ;
 int buffer_add (int *,void*,int,int *) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 scalar_t__ pci_alloc_consistent (struct pci_dev*,int,int*) ;

short alloc_tx_desc_ring(struct net_device *dev, int bufsize, int count,
    int addr)
{
 int i;
 u32 *desc;
 u32 *tmp;
 dma_addr_t dma_desc, dma_tmp;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct pci_dev *pdev = priv->pdev;
 void *buf;

 if((bufsize & 0xfff) != bufsize) {
  DMESGE ("TX buffer allocation too large");
  return 0;
 }
 desc = (u32*)pci_alloc_consistent(pdev,
       sizeof(u32)*8*count+256, &dma_desc);
 if (desc == ((void*)0))
  return -1;

 if (dma_desc & 0xff)




  WARN(1, "DMA buffer is not aligned\n");

 tmp = desc;

 for (i = 0; i < count; i++) {
  buf = (void *)pci_alloc_consistent(pdev, bufsize, &dma_tmp);
  if (buf == ((void*)0))
   return -ENOMEM;

  switch(addr) {
  case 130:
   if(-1 == buffer_add(&(priv->txmapbufs),buf,dma_tmp,((void*)0))){
    DMESGE("Unable to allocate mem for buffer NP");
    return -ENOMEM;
   }
   break;
  case 132:
   if(-1 == buffer_add(&(priv->txbkpbufs),buf,dma_tmp,((void*)0))){
    DMESGE("Unable to allocate mem for buffer LP");
    return -ENOMEM;
   }
   break;
  case 133:
   if(-1 == buffer_add(&(priv->txbepbufs),buf,dma_tmp,((void*)0))){
    DMESGE("Unable to allocate mem for buffer NP");
    return -ENOMEM;
   }
   break;
  case 129:
   if(-1 == buffer_add(&(priv->txvipbufs),buf,dma_tmp,((void*)0))){
    DMESGE("Unable to allocate mem for buffer LP");
    return -ENOMEM;
   }
   break;
  case 128:
   if(-1 == buffer_add(&(priv->txvopbufs),buf,dma_tmp,((void*)0))){
    DMESGE("Unable to allocate mem for buffer NP");
    return -ENOMEM;
   }
   break;
  case 131:
   if(-1 == buffer_add(&(priv->txhpbufs),buf,dma_tmp,((void*)0))){
    DMESGE("Unable to allocate mem for buffer HP");
    return -ENOMEM;
   }
   break;
  case 134:
          if(-1 == buffer_add(&(priv->txbeaconbufs),buf,dma_tmp,((void*)0))){
   DMESGE("Unable to allocate mem for buffer BP");
    return -ENOMEM;
   }
   break;
  }
  *tmp = *tmp &~ (1<<31);
  *(tmp+2) = (u32)dma_tmp;
  *(tmp+3) = bufsize;

  if(i+1<count)
   *(tmp+4) = (u32)dma_desc+((i+1)*8*4);
  else
   *(tmp+4) = (u32)dma_desc;

  tmp=tmp+8;
 }

 switch(addr) {
 case 130:
  priv->txmapringdma=dma_desc;
  priv->txmapring=desc;
  break;
 case 132:
  priv->txbkpringdma=dma_desc;
  priv->txbkpring=desc;
  break;
 case 133:
  priv->txbepringdma=dma_desc;
  priv->txbepring=desc;
  break;
 case 129:
  priv->txvipringdma=dma_desc;
  priv->txvipring=desc;
  break;
 case 128:
  priv->txvopringdma=dma_desc;
  priv->txvopring=desc;
  break;
 case 131:
  priv->txhpringdma=dma_desc;
  priv->txhpring=desc;
  break;
 case 134:
  priv->txbeaconringdma=dma_desc;
  priv->txbeaconring=desc;
  break;

 }

 return 0;
}
