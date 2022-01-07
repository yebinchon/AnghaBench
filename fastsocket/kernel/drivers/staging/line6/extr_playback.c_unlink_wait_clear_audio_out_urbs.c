
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {int dummy; } ;


 int unlink_audio_out_urbs (struct snd_line6_pcm*) ;
 int wait_clear_audio_out_urbs (struct snd_line6_pcm*) ;

void unlink_wait_clear_audio_out_urbs(struct snd_line6_pcm *line6pcm)
{
 unlink_audio_out_urbs(line6pcm);
 wait_clear_audio_out_urbs(line6pcm);
}
