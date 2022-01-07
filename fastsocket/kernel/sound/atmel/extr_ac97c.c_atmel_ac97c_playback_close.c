
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atmel_ac97c {int * playback_substream; scalar_t__ cur_format; scalar_t__ cur_rate; int opened; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opened_mutex ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int atmel_ac97c_playback_close(struct snd_pcm_substream *substream)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);

 mutex_lock(&opened_mutex);
 chip->opened--;
 if (!chip->opened) {
  chip->cur_rate = 0;
  chip->cur_format = 0;
 }
 mutex_unlock(&opened_mutex);

 chip->playback_substream = ((void*)0);

 return 0;
}
