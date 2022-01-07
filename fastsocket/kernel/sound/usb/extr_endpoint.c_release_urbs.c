
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_endpoint {int nurbs; int * syncbuf; int sync_dma; TYPE_1__* chip; int * urb; int * prepare_data_urb; int * retire_data_urb; } ;
struct TYPE_2__ {int dev; } ;


 int SYNC_URBS ;
 int deactivate_urbs (struct snd_usb_endpoint*,int,int) ;
 int release_urb_ctx (int *) ;
 int usb_buffer_free (int ,int,int *,int ) ;
 int wait_clear_urbs (struct snd_usb_endpoint*) ;

__attribute__((used)) static void release_urbs(struct snd_usb_endpoint *ep, int force)
{
 int i;


 ep->retire_data_urb = ((void*)0);
 ep->prepare_data_urb = ((void*)0);


 deactivate_urbs(ep, force, 1);
 wait_clear_urbs(ep);

 for (i = 0; i < ep->nurbs; i++)
  release_urb_ctx(&ep->urb[i]);

 if (ep->syncbuf)
  usb_buffer_free(ep->chip->dev, SYNC_URBS * 4,
      ep->syncbuf, ep->sync_dma);

 ep->syncbuf = ((void*)0);
 ep->nurbs = 0;
}
