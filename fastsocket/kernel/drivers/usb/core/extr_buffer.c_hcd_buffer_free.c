
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; int * pool; TYPE_3__* driver; } ;
struct usb_bus {TYPE_2__* controller; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int dma_mask; } ;


 int HCD_BUFFER_POOLS ;
 int HCD_LOCAL_MEM ;
 struct usb_hcd* bus_to_hcd (struct usb_bus*) ;
 int dma_free_coherent (int ,size_t,void*,int ) ;
 int dma_pool_free (int ,void*,int ) ;
 int kfree (void*) ;
 size_t* pool_max ;

void hcd_buffer_free(
 struct usb_bus *bus,
 size_t size,
 void *addr,
 dma_addr_t dma
)
{
 struct usb_hcd *hcd = bus_to_hcd(bus);
 int i;

 if (!addr)
  return;

 if (!bus->controller->dma_mask &&
     !(hcd->driver->flags & HCD_LOCAL_MEM)) {
  kfree(addr);
  return;
 }

 for (i = 0; i < HCD_BUFFER_POOLS; i++) {
  if (size <= pool_max [i]) {
   dma_pool_free(hcd->pool [i], addr, dma);
   return;
  }
 }
 dma_free_coherent(hcd->self.controller, size, addr, dma);
}
