
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {unsigned long long formats; scalar_t__ rate_max; scalar_t__ rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct atmel_ac97c {int cur_format; struct snd_pcm_substream* capture_substream; scalar_t__ cur_rate; int opened; } ;


 TYPE_1__ atmel_ac97c_hw ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opened_mutex ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int atmel_ac97c_capture_open(struct snd_pcm_substream *substream)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 mutex_lock(&opened_mutex);
 chip->opened++;
 runtime->hw = atmel_ac97c_hw;
 if (chip->cur_rate) {
  runtime->hw.rate_min = chip->cur_rate;
  runtime->hw.rate_max = chip->cur_rate;
 }
 if (chip->cur_format)
  runtime->hw.formats = (1ULL << chip->cur_format);
 mutex_unlock(&opened_mutex);
 chip->capture_substream = substream;
 return 0;
}
