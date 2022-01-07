
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8180_priv {int* rxring; int rxringdma; int rxbufferhead; int rxbuffer; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 int DMESGE (char*) ;
 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;
 int WARN (int,char*) ;
 int buffer_add (int *,void*,int,int *) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 void* kmalloc (int,int ) ;
 scalar_t__ pci_alloc_consistent (struct pci_dev*,int,int*) ;
 int pci_map_single (struct pci_dev*,void*,int,int ) ;

short alloc_rx_desc_ring(struct net_device *dev, u16 bufsize, int count)
{
 int i;
 u32 *desc;
 u32 *tmp;
 dma_addr_t dma_desc,dma_tmp;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct pci_dev *pdev=priv->pdev;
 void *buf;
 u8 rx_desc_size;

 rx_desc_size = 8;

 if((bufsize & 0xfff) != bufsize){
  DMESGE ("RX buffer allocation too large");
  return -1;
 }

 desc = (u32*)pci_alloc_consistent(pdev,sizeof(u32)*rx_desc_size*count+256,
       &dma_desc);

 if (dma_desc & 0xff)




  WARN(1, "DMA buffer is not aligned\n");

 priv->rxring=desc;
 priv->rxringdma=dma_desc;
 tmp=desc;

 for (i = 0; i < count; i++) {
  if ((buf= kmalloc(bufsize * sizeof(u8),GFP_ATOMIC)) == ((void*)0)){
   DMESGE("Failed to kmalloc RX buffer");
   return -1;
  }

  dma_tmp = pci_map_single(pdev,buf,bufsize * sizeof(u8),
      PCI_DMA_FROMDEVICE);

  if(-1 == buffer_add(&(priv->rxbuffer), buf,dma_tmp,
      &(priv->rxbufferhead))){
      DMESGE("Unable to allocate mem RX buf");
      return -1;
  }
  *tmp = 0;
  *tmp = *tmp |( bufsize&0xfff);
  *(tmp+2) = (u32)dma_tmp;
  *tmp = *tmp |(1<<31);

  tmp=tmp+rx_desc_size;
 }

 *(tmp-rx_desc_size) = *(tmp-rx_desc_size) | (1<<30);

 return 0;
}
