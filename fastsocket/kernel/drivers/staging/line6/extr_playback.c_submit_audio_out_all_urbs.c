
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int LINE6_ISO_BUFFERS ;
 int submit_audio_out_urb (struct snd_pcm_substream*) ;

__attribute__((used)) static int submit_audio_out_all_urbs(struct snd_pcm_substream *substream)
{
 int ret, i;

 for (i = 0; i < LINE6_ISO_BUFFERS; ++i) {
  ret = submit_audio_out_urb(substream);
  if (ret < 0)
   return ret;
 }

 return 0;
}
