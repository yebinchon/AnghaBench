
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {struct dma_pool** pool; } ;
struct dma_pool {int dummy; } ;


 int HCD_BUFFER_POOLS ;
 int dma_pool_destroy (struct dma_pool*) ;

void hcd_buffer_destroy(struct usb_hcd *hcd)
{
 int i;

 for (i = 0; i < HCD_BUFFER_POOLS; i++) {
  struct dma_pool *pool = hcd->pool[i];
  if (pool) {
   dma_pool_destroy(pool);
   hcd->pool[i] = ((void*)0);
  }
 }
}
