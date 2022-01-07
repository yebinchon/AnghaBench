
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_sg_request {size_t entries; TYPE_2__* dev; int nents; int sg; int pipe; int * urbs; } ;
struct TYPE_3__ {int * dma_mask; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int kfree (int *) ;
 int usb_buffer_unmap_sg (TYPE_2__*,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 int usb_pipein (int ) ;

__attribute__((used)) static void sg_clean(struct usb_sg_request *io)
{
 if (io->urbs) {
  while (io->entries--)
   usb_free_urb(io->urbs [io->entries]);
  kfree(io->urbs);
  io->urbs = ((void*)0);
 }
 if (io->dev->dev.dma_mask != ((void*)0))
  usb_buffer_unmap_sg(io->dev, usb_pipein(io->pipe),
        io->sg, io->nents);
 io->dev = ((void*)0);
}
