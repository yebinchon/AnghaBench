
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* controller; } ;
struct usb_hcd {int * pool; TYPE_2__ self; TYPE_1__* driver; } ;
struct TYPE_6__ {int dma_mask; } ;
struct TYPE_4__ {int flags; } ;


 int ENOMEM ;
 int HCD_BUFFER_POOLS ;
 int HCD_LOCAL_MEM ;
 int dma_pool_create (char*,TYPE_3__*,int,int,int ) ;
 int hcd_buffer_destroy (struct usb_hcd*) ;
 int* pool_max ;
 int snprintf (char*,int,char*,int) ;

int hcd_buffer_create(struct usb_hcd *hcd)
{
 char name[16];
 int i, size;

 if (!hcd->self.controller->dma_mask &&
     !(hcd->driver->flags & HCD_LOCAL_MEM))
  return 0;

 for (i = 0; i < HCD_BUFFER_POOLS; i++) {
  size = pool_max[i];
  if (!size)
   continue;
  snprintf(name, sizeof name, "buffer-%d", size);
  hcd->pool[i] = dma_pool_create(name, hcd->self.controller,
    size, size, 0);
  if (!hcd->pool [i]) {
   hcd_buffer_destroy(hcd);
   return -ENOMEM;
  }
 }
 return 0;
}
