
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_urb_ctx {TYPE_3__* urb; scalar_t__ buffer_size; TYPE_2__* ep; } ;
struct TYPE_6__ {int transfer_dma; int transfer_buffer; } ;
struct TYPE_5__ {TYPE_1__* chip; } ;
struct TYPE_4__ {int dev; } ;


 int usb_buffer_free (int ,scalar_t__,int ,int ) ;
 int usb_free_urb (TYPE_3__*) ;

__attribute__((used)) static void release_urb_ctx(struct snd_urb_ctx *u)
{
 if (u->buffer_size)
  usb_buffer_free(u->ep->chip->dev, u->buffer_size,
      u->urb->transfer_buffer,
      u->urb->transfer_dma);
 usb_free_urb(u->urb);
 u->urb = ((void*)0);
}
