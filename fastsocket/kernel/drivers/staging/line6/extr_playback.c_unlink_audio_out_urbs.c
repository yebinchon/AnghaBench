
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct snd_line6_pcm {struct urb** urb_audio_out; int unlink_urb_out; int active_urb_out; } ;


 unsigned int LINE6_ISO_BUFFERS ;
 int test_and_set_bit (unsigned int,int *) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static void unlink_audio_out_urbs(struct snd_line6_pcm *line6pcm)
{
 unsigned int i;

 for (i = LINE6_ISO_BUFFERS; i--;) {
  if (test_bit(i, &line6pcm->active_urb_out)) {
   if (!test_and_set_bit(i, &line6pcm->unlink_urb_out)) {
    struct urb *u = line6pcm->urb_audio_out[i];
    usb_unlink_urb(u);
   }
  }
 }
}
