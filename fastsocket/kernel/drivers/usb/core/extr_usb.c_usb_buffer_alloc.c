
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int bus; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* hcd_buffer_alloc (int ,size_t,int ,int *) ;

void *usb_buffer_alloc(struct usb_device *dev, size_t size, gfp_t mem_flags,
         dma_addr_t *dma)
{
 if (!dev || !dev->bus)
  return ((void*)0);
 return hcd_buffer_alloc(dev->bus, size, mem_flags, dma);
}
