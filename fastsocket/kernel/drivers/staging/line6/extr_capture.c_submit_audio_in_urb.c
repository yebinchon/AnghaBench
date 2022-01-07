
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_iso_packet_descriptor {int offset; int length; } ;
struct urb {int transfer_buffer_length; struct snd_pcm_substream* context; scalar_t__ transfer_buffer; struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {int max_packet_size; int lock_audio_in; int active_urb_in; scalar_t__ buffer_in; struct urb** urb_audio_in; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 unsigned int LINE6_ISO_BUFFERS ;
 int LINE6_ISO_PACKETS ;
 int dev_err (int ,char*,...) ;
 unsigned int find_first_zero_bit (int *,unsigned int) ;
 int s2m (struct snd_pcm_substream*) ;
 int set_bit (unsigned int,int *) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int submit_audio_in_urb(struct snd_pcm_substream *substream)
{
 unsigned int index;
 unsigned long flags;
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 int i, urb_size;
 struct urb *urb_in;

 spin_lock_irqsave(&line6pcm->lock_audio_in, flags);
 index = find_first_zero_bit(&line6pcm->active_urb_in, LINE6_ISO_BUFFERS);

 if (index >= LINE6_ISO_BUFFERS) {
  spin_unlock_irqrestore(&line6pcm->lock_audio_in, flags);
  dev_err(s2m(substream), "no free URB found\n");
  return -EINVAL;
 }

 urb_in = line6pcm->urb_audio_in[index];
 urb_size = 0;

 for (i = 0; i < LINE6_ISO_PACKETS; ++i) {
  struct usb_iso_packet_descriptor *fin = &urb_in->iso_frame_desc[i];
  fin->offset = urb_size;
  fin->length = line6pcm->max_packet_size;
  urb_size += line6pcm->max_packet_size;
 }

 urb_in->transfer_buffer = line6pcm->buffer_in + index * LINE6_ISO_PACKETS * line6pcm->max_packet_size;
 urb_in->transfer_buffer_length = urb_size;
 urb_in->context = substream;

 if (usb_submit_urb(urb_in, GFP_ATOMIC) == 0)
  set_bit(index, &line6pcm->active_urb_in);
 else
  dev_err(s2m(substream), "URB in #%d submission failed\n", index);

 spin_unlock_irqrestore(&line6pcm->lock_audio_in, flags);
 return 0;
}
