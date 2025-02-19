
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_endpoint {int datainterval; int stride; int silence_value; int maxpacksize; unsigned int freqmax; int freqn; unsigned int curpacksize; unsigned int syncinterval; unsigned int nurbs; int pipe; TYPE_1__* chip; struct snd_urb_ctx* urb; scalar_t__ fill_max; } ;
struct snd_urb_ctx {unsigned int index; unsigned int packets; unsigned int buffer_size; int ready_list; TYPE_2__* urb; struct snd_usb_endpoint* ep; } ;
struct audioformat {int datainterval; scalar_t__ fmt_type; } ;
typedef scalar_t__ snd_pcm_format_t ;
struct TYPE_4__ {int transfer_flags; int interval; int complete; struct snd_urb_ctx* context; int pipe; int transfer_buffer; int transfer_dma; } ;
struct TYPE_3__ {unsigned int nrpacks; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MAX_PACKS ;
 unsigned int MAX_QUEUE ;
 unsigned int MAX_URBS ;
 scalar_t__ SNDRV_PCM_FORMAT_U8 ;
 scalar_t__ UAC_FORMAT_TYPE_II ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ USB_SPEED_FULL ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int release_urbs (struct snd_usb_endpoint*,int ) ;
 int snd_complete_urb ;
 unsigned int snd_pcm_format_physical_width (scalar_t__) ;
 int snd_usb_endpoint_implict_feedback_sink (struct snd_usb_endpoint*) ;
 scalar_t__ snd_usb_get_speed (int ) ;
 TYPE_2__* usb_alloc_urb (unsigned int,int ) ;
 int usb_buffer_alloc (int ,unsigned int,int ,int *) ;
 int usb_pipeout (int ) ;

__attribute__((used)) static int data_ep_set_params(struct snd_usb_endpoint *ep,
         snd_pcm_format_t pcm_format,
         unsigned int channels,
         unsigned int period_bytes,
         struct audioformat *fmt,
         struct snd_usb_endpoint *sync_ep)
{
 unsigned int maxsize, i, urb_packs, total_packs, packs_per_ms;
 int is_playback = usb_pipeout(ep->pipe);
 int frame_bits = snd_pcm_format_physical_width(pcm_format) * channels;

 ep->datainterval = fmt->datainterval;
 ep->stride = frame_bits >> 3;
 ep->silence_value = pcm_format == SNDRV_PCM_FORMAT_U8 ? 0x80 : 0;


 if (ep->maxpacksize) {

  maxsize = ep->maxpacksize;
  ep->freqmax = (maxsize / (frame_bits >> 3))
    << (16 - ep->datainterval);
 } else {

  ep->freqmax = ep->freqn + (ep->freqn >> 2);
  maxsize = ((ep->freqmax + 0xffff) * (frame_bits >> 3))
    >> (16 - ep->datainterval);
 }

 if (ep->fill_max)
  ep->curpacksize = ep->maxpacksize;
 else
  ep->curpacksize = maxsize;

 if (snd_usb_get_speed(ep->chip->dev) != USB_SPEED_FULL)
  packs_per_ms = 8 >> ep->datainterval;
 else
  packs_per_ms = 1;

 if (is_playback && !snd_usb_endpoint_implict_feedback_sink(ep)) {
  urb_packs = max(ep->chip->nrpacks, 1);
  urb_packs = min(urb_packs, (unsigned int) MAX_PACKS);
 } else {
  urb_packs = 1;
 }

 urb_packs *= packs_per_ms;

 if (sync_ep && !snd_usb_endpoint_implict_feedback_sink(ep))
  urb_packs = min(urb_packs, 1U << sync_ep->syncinterval);


 if (is_playback && !snd_usb_endpoint_implict_feedback_sink(ep)) {
  unsigned int minsize, maxpacks;

  minsize = (ep->freqn >> (16 - ep->datainterval))
     * (frame_bits >> 3);

  if (sync_ep)
   minsize -= minsize >> 3;
  minsize = max(minsize, 1u);
  total_packs = (period_bytes + minsize - 1) / minsize;

  if (total_packs < 2) {
   total_packs = 2;
  } else {

   maxpacks = max(MAX_QUEUE * packs_per_ms, urb_packs * 2);
   total_packs = min(total_packs, maxpacks);
  }
 } else {
  while (urb_packs > 1 && urb_packs * maxsize >= period_bytes)
   urb_packs >>= 1;
  total_packs = MAX_URBS * urb_packs;
 }

 ep->nurbs = (total_packs + urb_packs - 1) / urb_packs;
 if (ep->nurbs > MAX_URBS) {

  ep->nurbs = MAX_URBS;
  total_packs = MAX_URBS * urb_packs;
 } else if (ep->nurbs < 2) {



  ep->nurbs = 2;
 }


 for (i = 0; i < ep->nurbs; i++) {
  struct snd_urb_ctx *u = &ep->urb[i];
  u->index = i;
  u->ep = ep;
  u->packets = (i + 1) * total_packs / ep->nurbs
   - i * total_packs / ep->nurbs;
  u->buffer_size = maxsize * u->packets;

  if (fmt->fmt_type == UAC_FORMAT_TYPE_II)
   u->packets++;
  u->urb = usb_alloc_urb(u->packets, GFP_KERNEL);
  if (!u->urb)
   goto out_of_memory;

  u->urb->transfer_buffer =
   usb_buffer_alloc(ep->chip->dev, u->buffer_size,
        GFP_KERNEL, &u->urb->transfer_dma);
  if (!u->urb->transfer_buffer)
   goto out_of_memory;
  u->urb->pipe = ep->pipe;
  u->urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
  u->urb->interval = 1 << ep->datainterval;
  u->urb->context = u;
  u->urb->complete = snd_complete_urb;
  INIT_LIST_HEAD(&u->ready_list);
 }

 return 0;

out_of_memory:
 release_urbs(ep, 0);
 return -ENOMEM;
}
