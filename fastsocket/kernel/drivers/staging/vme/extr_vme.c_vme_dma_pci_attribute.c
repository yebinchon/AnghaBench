
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_dma_pci {int address; void* private; int type; } ;
struct vme_dma_attr {int address; void* private; int type; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int VME_DMA_PCI ;
 int kfree (struct vme_dma_pci*) ;
 scalar_t__ kmalloc (int,int ) ;
 int printk (char*) ;

struct vme_dma_attr *vme_dma_pci_attribute(dma_addr_t address)
{
 struct vme_dma_attr *attributes;
 struct vme_dma_pci *pci_attr;



 attributes = (struct vme_dma_attr *)kmalloc(
  sizeof(struct vme_dma_attr), GFP_KERNEL);
 if(attributes == ((void*)0)) {
  printk("Unable to allocate memory for attributes structure\n");
  goto err_attr;
 }

 pci_attr = (struct vme_dma_pci *)kmalloc(sizeof(struct vme_dma_pci),
  GFP_KERNEL);
 if(pci_attr == ((void*)0)) {
  printk("Unable to allocate memory for pci attributes\n");
  goto err_pci;
 }



 attributes->type = VME_DMA_PCI;
 attributes->private = (void *)pci_attr;

 pci_attr->address = address;

 return attributes;

 kfree(pci_attr);
err_pci:
 kfree(attributes);
err_attr:
 return ((void*)0);
}
