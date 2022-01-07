
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct snd_usb_midi_in_endpoint {TYPE_1__** urbs; struct snd_usb_midi* umidi; } ;
struct snd_usb_midi_endpoint_info {int in_interval; int in_ep; } ;
struct snd_usb_midi_endpoint {struct snd_usb_midi_in_endpoint* in; } ;
struct snd_usb_midi {int dev; } ;
struct TYPE_4__ {int transfer_flags; int transfer_dma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int INPUT_URBS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 struct snd_usb_midi_in_endpoint* kzalloc (int,int ) ;
 int snd_usbmidi_in_endpoint_delete (struct snd_usb_midi_in_endpoint*) ;
 int snd_usbmidi_in_urb_complete ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 void* usb_buffer_alloc (int ,int,int ,int *) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,unsigned int,void*,int,int ,struct snd_usb_midi_in_endpoint*) ;
 int usb_fill_int_urb (TYPE_1__*,int ,unsigned int,void*,int,int ,struct snd_usb_midi_in_endpoint*,int ) ;
 int usb_maxpacket (int ,unsigned int,int ) ;
 unsigned int usb_rcvbulkpipe (int ,int ) ;
 unsigned int usb_rcvintpipe (int ,int ) ;

__attribute__((used)) static int snd_usbmidi_in_endpoint_create(struct snd_usb_midi* umidi,
       struct snd_usb_midi_endpoint_info* ep_info,
       struct snd_usb_midi_endpoint* rep)
{
 struct snd_usb_midi_in_endpoint* ep;
 void* buffer;
 unsigned int pipe;
 int length;
 unsigned int i;

 rep->in = ((void*)0);
 ep = kzalloc(sizeof(*ep), GFP_KERNEL);
 if (!ep)
  return -ENOMEM;
 ep->umidi = umidi;

 for (i = 0; i < INPUT_URBS; ++i) {
  ep->urbs[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!ep->urbs[i]) {
   snd_usbmidi_in_endpoint_delete(ep);
   return -ENOMEM;
  }
 }
 if (ep_info->in_interval)
  pipe = usb_rcvintpipe(umidi->dev, ep_info->in_ep);
 else
  pipe = usb_rcvbulkpipe(umidi->dev, ep_info->in_ep);
 length = usb_maxpacket(umidi->dev, pipe, 0);
 for (i = 0; i < INPUT_URBS; ++i) {
  buffer = usb_buffer_alloc(umidi->dev, length, GFP_KERNEL,
       &ep->urbs[i]->transfer_dma);
  if (!buffer) {
   snd_usbmidi_in_endpoint_delete(ep);
   return -ENOMEM;
  }
  if (ep_info->in_interval)
   usb_fill_int_urb(ep->urbs[i], umidi->dev,
      pipe, buffer, length,
      snd_usbmidi_in_urb_complete,
      ep, ep_info->in_interval);
  else
   usb_fill_bulk_urb(ep->urbs[i], umidi->dev,
       pipe, buffer, length,
       snd_usbmidi_in_urb_complete, ep);
  ep->urbs[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
 }

 rep->in = ep;
 return 0;
}
