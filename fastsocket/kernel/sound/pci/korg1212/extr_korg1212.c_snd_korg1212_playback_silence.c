
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_korg1212 {size_t cardState; int channels; } ;
typedef int snd_pcm_uframes_t ;


 int K1212_DEBUG_PRINTK_VERBOSE (char*,int ) ;
 int snd_korg1212_silence (struct snd_korg1212*,int ,int ,int ,int) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_playback_silence(struct snd_pcm_substream *substream,
                           int channel,
                           snd_pcm_uframes_t pos,
                           snd_pcm_uframes_t count)
{
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);

 K1212_DEBUG_PRINTK_VERBOSE("K1212_DEBUG: snd_korg1212_playback_silence [%s]\n",
       stateName[korg1212->cardState]);

 return snd_korg1212_silence(korg1212, pos, count, 0, korg1212->channels * 2);
}
