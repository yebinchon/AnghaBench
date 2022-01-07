
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ speed; int ep_list; } ;
struct udc {TYPE_3__* ep; TYPE_2__ gadget; } ;
struct TYPE_4__ {int ep_list; } ;
struct TYPE_6__ {int fifo_depth; TYPE_1__ ep; } ;


 int INIT_LIST_HEAD (int *) ;
 size_t UDC_EPIN_IX ;
 int UDC_EPIN_SMALLINT_BUFF_SIZE ;
 size_t UDC_EPIN_STATUS_IX ;
 size_t UDC_EPOUT_IX ;
 int UDC_FS_EPIN_BUFF_SIZE ;
 int UDC_RXFIFO_SIZE ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 int hs_tx_buf ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void make_ep_lists(struct udc *dev)
{

 INIT_LIST_HEAD(&dev->gadget.ep_list);
 list_add_tail(&dev->ep[UDC_EPIN_STATUS_IX].ep.ep_list,
      &dev->gadget.ep_list);
 list_add_tail(&dev->ep[UDC_EPIN_IX].ep.ep_list,
      &dev->gadget.ep_list);
 list_add_tail(&dev->ep[UDC_EPOUT_IX].ep.ep_list,
      &dev->gadget.ep_list);


 dev->ep[UDC_EPIN_STATUS_IX].fifo_depth = UDC_EPIN_SMALLINT_BUFF_SIZE;
 if (dev->gadget.speed == USB_SPEED_FULL)
  dev->ep[UDC_EPIN_IX].fifo_depth = UDC_FS_EPIN_BUFF_SIZE;
 else if (dev->gadget.speed == USB_SPEED_HIGH)
  dev->ep[UDC_EPIN_IX].fifo_depth = hs_tx_buf;
 dev->ep[UDC_EPOUT_IX].fifo_depth = UDC_RXFIFO_SIZE;
}
