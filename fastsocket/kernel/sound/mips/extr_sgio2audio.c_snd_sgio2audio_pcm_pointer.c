
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sgio2audio_chan {size_t idx; } ;
struct snd_sgio2audio {TYPE_1__* channel; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_4__ {struct snd_sgio2audio_chan* private_data; } ;
struct TYPE_3__ {int pos; } ;


 int bytes_to_frames (TYPE_2__*,int ) ;
 struct snd_sgio2audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_sgio2audio_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_sgio2audio *chip = snd_pcm_substream_chip(substream);
 struct snd_sgio2audio_chan *chan = substream->runtime->private_data;


 return bytes_to_frames(substream->runtime,
          chip->channel[chan->idx].pos);
}
