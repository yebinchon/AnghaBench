
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sgio2audio_chan {int idx; } ;
struct snd_sgio2audio {TYPE_1__* channel; int ad1843; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; struct snd_sgio2audio_chan* private_data; } ;
struct TYPE_2__ {int lock; struct snd_pcm_substream* substream; scalar_t__ size; scalar_t__ pos; } ;


 int SNDRV_PCM_FORMAT_S16_LE ;


 int ad1843_setup_adc (int *,int ,int ,int ) ;
 int ad1843_setup_dac (int *,int,int ,int ,int ) ;
 struct snd_sgio2audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sgio2audio_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_sgio2audio *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_sgio2audio_chan *chan = substream->runtime->private_data;
 int ch = chan->idx;
 unsigned long flags;

 spin_lock_irqsave(&chip->channel[ch].lock, flags);


 chip->channel[ch].pos = 0;
 chip->channel[ch].size = 0;
 chip->channel[ch].substream = substream;



 switch (substream->stream) {
 case 128:
  ad1843_setup_dac(&chip->ad1843,
     ch - 1,
     runtime->rate,
     SNDRV_PCM_FORMAT_S16_LE,
     runtime->channels);
  break;
 case 129:
  ad1843_setup_adc(&chip->ad1843,
     runtime->rate,
     SNDRV_PCM_FORMAT_S16_LE,
     runtime->channels);
  break;
 }
 spin_unlock_irqrestore(&chip->channel[ch].lock, flags);
 return 0;
}
