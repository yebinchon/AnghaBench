
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {struct usb_bus* bus; } ;
struct usb_bus {struct device* controller; } ;
struct scatterlist {int dummy; } ;
struct device {int dma_mask; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ dma_map_sg (struct device*,struct scatterlist*,int,int ) ;

int usb_buffer_map_sg(const struct usb_device *dev, int is_in,
        struct scatterlist *sg, int nents)
{
 struct usb_bus *bus;
 struct device *controller;

 if (!dev
   || !(bus = dev->bus)
   || !(controller = bus->controller)
   || !controller->dma_mask)
  return -EINVAL;


 return dma_map_sg(controller, sg, nents,
   is_in ? DMA_FROM_DEVICE : DMA_TO_DEVICE) ? : -ENOMEM;
}
