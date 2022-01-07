
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_dma_attr {struct vme_dma_attr* private; } ;


 int kfree (struct vme_dma_attr*) ;

void vme_dma_free_attribute(struct vme_dma_attr *attributes)
{
 kfree(attributes->private);
 kfree(attributes);
}
