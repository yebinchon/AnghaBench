
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int start_frame; int complete; scalar_t__ error_count; int interval; int number_of_packets; int transfer_flags; int pipe; int dev; } ;
struct snd_line6_pcm {int ep_audio_read; TYPE_1__* line6; struct urb** urb_audio_in; } ;
struct TYPE_2__ {int usbdev; int ifcdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LINE6_ISO_BUFFERS ;
 int LINE6_ISO_INTERVAL ;
 int LINE6_ISO_PACKETS ;
 int URB_ISO_ASAP ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int audio_in_callback ;
 int dev_err (int ,char*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_rcvisocpipe (int ,int) ;

int create_audio_in_urbs(struct snd_line6_pcm *line6pcm)
{
 int i;


 for (i = 0; i < LINE6_ISO_BUFFERS; ++i) {
  struct urb *urb;


  urb = line6pcm->urb_audio_in[i] = usb_alloc_urb(LINE6_ISO_PACKETS, GFP_KERNEL);

  if (urb == ((void*)0)) {
   dev_err(line6pcm->line6->ifcdev, "Out of memory\n");
   return -ENOMEM;
  }

  urb->dev = line6pcm->line6->usbdev;
  urb->pipe = usb_rcvisocpipe(line6pcm->line6->usbdev, line6pcm->ep_audio_read & USB_ENDPOINT_NUMBER_MASK);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->start_frame = -1;
  urb->number_of_packets = LINE6_ISO_PACKETS;
  urb->interval = LINE6_ISO_INTERVAL;
  urb->error_count = 0;
  urb->complete = audio_in_callback;
 }

 return 0;
}
