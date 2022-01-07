
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vme_pattern_t ;
typedef int u32 ;
struct vme_dma_pattern {int type; int pattern; void* private; } ;
struct vme_dma_attr {int type; int pattern; void* private; } ;


 int GFP_KERNEL ;
 int VME_DMA_PATTERN ;
 int kfree (struct vme_dma_pattern*) ;
 scalar_t__ kmalloc (int,int ) ;
 int printk (char*) ;

struct vme_dma_attr *vme_dma_pattern_attribute(u32 pattern,
 vme_pattern_t type)
{
 struct vme_dma_attr *attributes;
 struct vme_dma_pattern *pattern_attr;

 attributes = (struct vme_dma_attr *)kmalloc(
  sizeof(struct vme_dma_attr), GFP_KERNEL);
 if(attributes == ((void*)0)) {
  printk("Unable to allocate memory for attributes structure\n");
  goto err_attr;
 }

 pattern_attr = (struct vme_dma_pattern *)kmalloc(
  sizeof(struct vme_dma_pattern), GFP_KERNEL);
 if(pattern_attr == ((void*)0)) {
  printk("Unable to allocate memory for pattern attributes\n");
  goto err_pat;
 }

 attributes->type = VME_DMA_PATTERN;
 attributes->private = (void *)pattern_attr;

 pattern_attr->pattern = pattern;
 pattern_attr->type = type;

 return attributes;

 kfree(pattern_attr);
err_pat:
 kfree(attributes);
err_attr:
 return ((void*)0);
}
