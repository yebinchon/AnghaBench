
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct buffer {struct buffer* buf; int dma; struct buffer* next; } ;


 int PCI_DMA_FROMDEVICE ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int kfree (struct buffer*) ;
 int pci_free_consistent (struct pci_dev*,int,struct buffer*,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int,int ) ;

void buffer_free(struct net_device *dev,struct buffer **buffer,int len,short
consistent)
{

 struct buffer *tmp,*next;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct pci_dev *pdev=priv->pdev;

 if (!*buffer)
  return;

 tmp = *buffer;

 do{
  next=tmp->next;
  if(consistent){
   pci_free_consistent(pdev,len,
        tmp->buf,tmp->dma);
  }else{
   pci_unmap_single(pdev, tmp->dma,
   len,PCI_DMA_FROMDEVICE);
   kfree(tmp->buf);
  }
  kfree(tmp);
  tmp = next;
 }
 while(next != *buffer);

 *buffer=((void*)0);
}
