
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_riptide {int ** playback_substream; } ;
struct snd_pcm_substream {int number; TYPE_1__* runtime; } ;
struct pcmhw {int dummy; } ;
struct TYPE_2__ {int * private_data; } ;


 struct pcmhw* get_pcmhwdev (struct snd_pcm_substream*) ;
 int kfree (struct pcmhw*) ;
 struct snd_riptide* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_riptide_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_riptide *chip = snd_pcm_substream_chip(substream);
 struct pcmhw *data = get_pcmhwdev(substream);
 int sub_num = substream->number;

 substream->runtime->private_data = ((void*)0);
 chip->playback_substream[sub_num] = ((void*)0);
 kfree(data);
 return 0;
}
