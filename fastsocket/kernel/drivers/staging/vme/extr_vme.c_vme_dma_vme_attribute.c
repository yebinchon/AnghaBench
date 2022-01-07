
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vme_width_t ;
typedef int vme_cycle_t ;
typedef int vme_address_t ;
struct vme_dma_vme {unsigned long long address; int dwidth; int cycle; int aspace; void* private; int type; } ;
struct vme_dma_attr {unsigned long long address; int dwidth; int cycle; int aspace; void* private; int type; } ;


 int GFP_KERNEL ;
 int VME_DMA_VME ;
 int kfree (struct vme_dma_vme*) ;
 scalar_t__ kmalloc (int,int ) ;
 int printk (char*) ;

struct vme_dma_attr *vme_dma_vme_attribute(unsigned long long address,
 vme_address_t aspace, vme_cycle_t cycle, vme_width_t dwidth)
{
 struct vme_dma_attr *attributes;
 struct vme_dma_vme *vme_attr;



 attributes = (struct vme_dma_attr *)kmalloc(
  sizeof(struct vme_dma_attr), GFP_KERNEL);
 if(attributes == ((void*)0)) {
  printk("Unable to allocate memory for attributes structure\n");
  goto err_attr;
 }

 vme_attr = (struct vme_dma_vme *)kmalloc(sizeof(struct vme_dma_vme),
  GFP_KERNEL);
 if(vme_attr == ((void*)0)) {
  printk("Unable to allocate memory for vme attributes\n");
  goto err_vme;
 }

 attributes->type = VME_DMA_VME;
 attributes->private = (void *)vme_attr;

 vme_attr->address = address;
 vme_attr->aspace = aspace;
 vme_attr->cycle = cycle;
 vme_attr->dwidth = dwidth;

 return attributes;

 kfree(vme_attr);
err_vme:
 kfree(attributes);
err_attr:
 return ((void*)0);
}
