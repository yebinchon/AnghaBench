
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;
struct snd_line6_pcm {scalar_t__* urb_audio_in; scalar_t__* urb_audio_out; } ;


 int LINE6_ISO_BUFFERS ;
 struct snd_line6_pcm* snd_pcm_chip (struct snd_pcm*) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void line6_cleanup_pcm(struct snd_pcm *pcm)
{
 int i;
 struct snd_line6_pcm *line6pcm = snd_pcm_chip(pcm);

 for (i = LINE6_ISO_BUFFERS; i--;) {
  if (line6pcm->urb_audio_out[i]) {
   usb_kill_urb(line6pcm->urb_audio_out[i]);
   usb_free_urb(line6pcm->urb_audio_out[i]);
  }
  if (line6pcm->urb_audio_in[i]) {
   usb_kill_urb(line6pcm->urb_audio_in[i]);
   usb_free_urb(line6pcm->urb_audio_in[i]);
  }
 }
}
