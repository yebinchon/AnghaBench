
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {int last_frame_number; int last_delay; int dev; } ;
typedef int snd_pcm_uframes_t ;


 int usb_get_current_frame_number (int ) ;

snd_pcm_uframes_t snd_usb_pcm_delay(struct snd_usb_substream *subs,
        unsigned int rate)
{
 int current_frame_number;
 int frame_diff;
 int est_delay;

 current_frame_number = usb_get_current_frame_number(subs->dev);





 frame_diff = (current_frame_number - subs->last_frame_number) & 0xff;



 est_delay = subs->last_delay - (frame_diff * rate / 1000);
 if (est_delay < 0)
  est_delay = 0;
 return est_delay;
}
