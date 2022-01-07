
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* iso_frame_desc; int transfer_buffer; struct snd_urb_ctx* context; } ;
struct snd_usb_packet_info {int packets; int* packet_size; } ;
struct snd_usb_endpoint {scalar_t__ use_count; int next_packet_write_pos; int stride; int freqshift; int freqn; unsigned int freqmax; unsigned int freqm; int lock; struct snd_usb_packet_info* next_packet; } ;
struct snd_urb_ctx {int packets; } ;
struct TYPE_2__ {scalar_t__ status; int actual_length; } ;


 int INT_MIN ;
 int MAX_URBS ;
 unsigned int le32_to_cpup (int ) ;
 scalar_t__ likely (int) ;
 int queue_pending_output_urbs (struct snd_usb_endpoint*) ;
 int snd_BUG_ON (int) ;
 scalar_t__ snd_usb_endpoint_implict_feedback_sink (struct snd_usb_endpoint*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void snd_usb_handle_sync_urb(struct snd_usb_endpoint *ep,
        struct snd_usb_endpoint *sender,
        const struct urb *urb)
{
 int shift;
 unsigned int f;
 unsigned long flags;

 snd_BUG_ON(ep == sender);







 if (snd_usb_endpoint_implict_feedback_sink(ep) &&
     ep->use_count != 0) {


  int i, bytes = 0;
  struct snd_urb_ctx *in_ctx;
  struct snd_usb_packet_info *out_packet;

  in_ctx = urb->context;


  for (i = 0; i < in_ctx->packets; i++)
   if (urb->iso_frame_desc[i].status == 0)
    bytes += urb->iso_frame_desc[i].actual_length;





  if (bytes == 0)
   return;

  spin_lock_irqsave(&ep->lock, flags);
  out_packet = ep->next_packet + ep->next_packet_write_pos;
  out_packet->packets = in_ctx->packets;
  for (i = 0; i < in_ctx->packets; i++) {
   if (urb->iso_frame_desc[i].status == 0)
    out_packet->packet_size[i] =
     urb->iso_frame_desc[i].actual_length / ep->stride;
   else
    out_packet->packet_size[i] = 0;
  }

  ep->next_packet_write_pos++;
  ep->next_packet_write_pos %= MAX_URBS;
  spin_unlock_irqrestore(&ep->lock, flags);
  queue_pending_output_urbs(ep);

  return;
 }
 if (urb->iso_frame_desc[0].status != 0 ||
     urb->iso_frame_desc[0].actual_length < 3)
  return;

 f = le32_to_cpup(urb->transfer_buffer);
 if (urb->iso_frame_desc[0].actual_length == 3)
  f &= 0x00ffffff;
 else
  f &= 0x0fffffff;

 if (f == 0)
  return;

 if (unlikely(ep->freqshift == INT_MIN)) {






  shift = 0;
  while (f < ep->freqn - ep->freqn / 4) {
   f <<= 1;
   shift++;
  }
  while (f > ep->freqn + ep->freqn / 2) {
   f >>= 1;
   shift--;
  }
  ep->freqshift = shift;
 } else if (ep->freqshift >= 0)
  f <<= ep->freqshift;
 else
  f >>= -ep->freqshift;

 if (likely(f >= ep->freqn - ep->freqn / 8 && f <= ep->freqmax)) {




  spin_lock_irqsave(&ep->lock, flags);
  ep->freqm = f;
  spin_unlock_irqrestore(&ep->lock, flags);
 } else {




  ep->freqshift = INT_MIN;
 }
}
