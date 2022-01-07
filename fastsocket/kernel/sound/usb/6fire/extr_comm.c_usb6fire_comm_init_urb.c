
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct urb {void (* complete ) (struct urb*) ;int interval; int dev; void* context; int pipe; int * transfer_buffer; } ;
struct comm_runtime {TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 int COMM_EP ;
 int usb_init_urb (struct urb*) ;
 int usb_sndintpipe (int ,int ) ;

__attribute__((used)) static void usb6fire_comm_init_urb(struct comm_runtime *rt, struct urb *urb,
  u8 *buffer, void *context, void(*handler)(struct urb *urb))
{
 usb_init_urb(urb);
 urb->transfer_buffer = buffer;
 urb->pipe = usb_sndintpipe(rt->chip->dev, COMM_EP);
 urb->complete = handler;
 urb->context = context;
 urb->interval = 1;
 urb->dev = rt->chip->dev;
}
