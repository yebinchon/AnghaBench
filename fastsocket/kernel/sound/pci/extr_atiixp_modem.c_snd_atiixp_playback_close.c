
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atiixp_modem {int open_mutex; int * dmas; } ;


 size_t ATI_DMA_PLAYBACK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_atiixp_pcm_close (struct snd_pcm_substream*,int *) ;
 struct atiixp_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_atiixp_playback_close(struct snd_pcm_substream *substream)
{
 struct atiixp_modem *chip = snd_pcm_substream_chip(substream);
 int err;
 mutex_lock(&chip->open_mutex);
 err = snd_atiixp_pcm_close(substream, &chip->dmas[ATI_DMA_PLAYBACK]);
 mutex_unlock(&chip->open_mutex);
 return err;
}
