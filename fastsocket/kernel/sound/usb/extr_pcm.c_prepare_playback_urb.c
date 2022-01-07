
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {unsigned int transfer_buffer_length; scalar_t__ transfer_buffer; scalar_t__ number_of_packets; TYPE_1__* iso_frame_desc; struct snd_urb_ctx* context; } ;
struct snd_usb_substream {scalar_t__ transfer_done; scalar_t__ fmt_type; unsigned int hwptr_done; unsigned int last_delay; int last_frame_number; TYPE_2__* pcm_substream; int lock; int dev; struct snd_usb_endpoint* data_endpoint; } ;
struct snd_usb_endpoint {int dummy; } ;
struct snd_urb_ctx {int packets; int* packet_size; } ;
struct snd_pcm_runtime {int frame_bits; scalar_t__ period_size; int buffer_size; unsigned int delay; scalar_t__ dma_area; } ;
struct TYPE_4__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {unsigned int offset; unsigned int length; } ;


 scalar_t__ UAC_FORMAT_TYPE_II ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;
 int snd_pcm_period_elapsed (TYPE_2__*) ;
 int snd_usb_endpoint_implict_feedback_sink (struct snd_usb_endpoint*) ;
 unsigned int snd_usb_endpoint_next_packet_size (struct snd_usb_endpoint*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_get_current_frame_number (int ) ;

__attribute__((used)) static void prepare_playback_urb(struct snd_usb_substream *subs,
     struct urb *urb)
{
 struct snd_pcm_runtime *runtime = subs->pcm_substream->runtime;
 struct snd_usb_endpoint *ep = subs->data_endpoint;
 struct snd_urb_ctx *ctx = urb->context;
 unsigned int counts, frames, bytes;
 int i, stride, period_elapsed = 0;
 unsigned long flags;

 stride = runtime->frame_bits >> 3;

 frames = 0;
 urb->number_of_packets = 0;
 spin_lock_irqsave(&subs->lock, flags);
 for (i = 0; i < ctx->packets; i++) {
  if (ctx->packet_size[i])
   counts = ctx->packet_size[i];
  else
   counts = snd_usb_endpoint_next_packet_size(ep);


  urb->iso_frame_desc[i].offset = frames * stride;
  urb->iso_frame_desc[i].length = counts * stride;
  frames += counts;
  urb->number_of_packets++;
  subs->transfer_done += counts;
  if (subs->transfer_done >= runtime->period_size) {
   subs->transfer_done -= runtime->period_size;
   period_elapsed = 1;
   if (subs->fmt_type == UAC_FORMAT_TYPE_II) {
    if (subs->transfer_done > 0) {


     frames -= subs->transfer_done;
     counts -= subs->transfer_done;
     urb->iso_frame_desc[i].length =
      counts * stride;
     subs->transfer_done = 0;
    }
    i++;
    if (i < ctx->packets) {

     urb->iso_frame_desc[i].offset =
      frames * stride;
     urb->iso_frame_desc[i].length = 0;
     urb->number_of_packets++;
    }
    break;
   }
  }
  if (period_elapsed &&
      !snd_usb_endpoint_implict_feedback_sink(subs->data_endpoint))
   break;
 }
 bytes = frames * stride;
 if (subs->hwptr_done + bytes > runtime->buffer_size * stride) {

  unsigned int bytes1 =
   runtime->buffer_size * stride - subs->hwptr_done;
  memcpy(urb->transfer_buffer,
         runtime->dma_area + subs->hwptr_done, bytes1);
  memcpy(urb->transfer_buffer + bytes1,
         runtime->dma_area, bytes - bytes1);
 } else {
  memcpy(urb->transfer_buffer,
         runtime->dma_area + subs->hwptr_done, bytes);
 }
 subs->hwptr_done += bytes;
 if (subs->hwptr_done >= runtime->buffer_size * stride)
  subs->hwptr_done -= runtime->buffer_size * stride;


 runtime->delay = subs->last_delay;
 runtime->delay += frames;
 subs->last_delay = runtime->delay;


 subs->last_frame_number = usb_get_current_frame_number(subs->dev);
 subs->last_frame_number &= 0xFF;

 spin_unlock_irqrestore(&subs->lock, flags);
 urb->transfer_buffer_length = bytes;
 if (period_elapsed)
  snd_pcm_period_elapsed(subs->pcm_substream);
}
