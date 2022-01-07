
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; int interval; int complete; struct snd_usX2Y_substream* context; int number_of_packets; struct usb_device* dev; int transfer_buffer; } ;
struct snd_usX2Y_substream {int endpoint; TYPE_2__* usX2Y; struct urb** urb; int maxpacksize; } ;
struct TYPE_4__ {TYPE_1__* hwdep_pcm_shm; struct usb_device* dev; struct snd_usX2Y_substream** subs; } ;
struct TYPE_3__ {int capture0xA; int capture0x8; int playback; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NRURBS ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int i_usX2Y_usbpcm_subs_startup ;
 int nr_of_packs () ;
 int usX2Y_usbpcm_urbs_release (struct snd_usX2Y_substream*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_kill_urb (struct urb*) ;
 int usb_maxpacket (struct usb_device*,unsigned int,int) ;
 unsigned int usb_rcvisocpipe (struct usb_device*,int) ;
 unsigned int usb_sndisocpipe (struct usb_device*,int) ;

__attribute__((used)) static int usX2Y_usbpcm_urbs_allocate(struct snd_usX2Y_substream *subs)
{
 int i;
 unsigned int pipe;
 int is_playback = subs == subs->usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
 struct usb_device *dev = subs->usX2Y->dev;

 pipe = is_playback ? usb_sndisocpipe(dev, subs->endpoint) :
   usb_rcvisocpipe(dev, subs->endpoint);
 subs->maxpacksize = usb_maxpacket(dev, pipe, is_playback);
 if (!subs->maxpacksize)
  return -EINVAL;


 for (i = 0; i < NRURBS; i++) {
  struct urb **purb = subs->urb + i;
  if (*purb) {
   usb_kill_urb(*purb);
   continue;
  }
  *purb = usb_alloc_urb(nr_of_packs(), GFP_KERNEL);
  if (((void*)0) == *purb) {
   usX2Y_usbpcm_urbs_release(subs);
   return -ENOMEM;
  }
  (*purb)->transfer_buffer = is_playback ?
   subs->usX2Y->hwdep_pcm_shm->playback : (
    subs->endpoint == 0x8 ?
    subs->usX2Y->hwdep_pcm_shm->capture0x8 :
    subs->usX2Y->hwdep_pcm_shm->capture0xA);

  (*purb)->dev = dev;
  (*purb)->pipe = pipe;
  (*purb)->number_of_packets = nr_of_packs();
  (*purb)->context = subs;
  (*purb)->interval = 1;
  (*purb)->complete = i_usX2Y_usbpcm_subs_startup;
 }
 return 0;
}
