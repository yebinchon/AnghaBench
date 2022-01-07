
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_iso_packet_descriptor {int offset; int length; int actual_length; } ;
struct urb {scalar_t__ start_frame; struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct snd_usX2Y_substream {TYPE_1__* usX2Y; } ;
struct snd_usX2Y_hwdep_pcm_shm {int captured_iso_head; int captured_iso_frames; TYPE_2__* captured_iso; } ;
struct TYPE_4__ {int offset; int length; scalar_t__ frame; } ;
struct TYPE_3__ {struct snd_usX2Y_hwdep_pcm_shm* hwdep_pcm_shm; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int NRURBS ;
 int SSS ;
 int nr_of_packs () ;

__attribute__((used)) static inline void usX2Y_usbpcm_urb_capt_iso_advance(struct snd_usX2Y_substream *subs,
           struct urb *urb)
{
 int pack;
 for (pack = 0; pack < nr_of_packs(); ++pack) {
  struct usb_iso_packet_descriptor *desc = urb->iso_frame_desc + pack;
  if (((void*)0) != subs) {
   struct snd_usX2Y_hwdep_pcm_shm *shm = subs->usX2Y->hwdep_pcm_shm;
   int head = shm->captured_iso_head + 1;
   if (head >= ARRAY_SIZE(shm->captured_iso))
    head = 0;
   shm->captured_iso[head].frame = urb->start_frame + pack;
   shm->captured_iso[head].offset = desc->offset;
   shm->captured_iso[head].length = desc->actual_length;
   shm->captured_iso_head = head;
   shm->captured_iso_frames++;
  }
  if ((desc->offset += desc->length * NRURBS*nr_of_packs()) +
      desc->length >= SSS)
   desc->offset -= (SSS - desc->length);
 }
}
