
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cmipci {int * channel; } ;
typedef int snd_pcm_uframes_t ;


 size_t CM_CH_CAPT ;
 int snd_cmipci_pcm_pointer (struct cmipci*,int *,struct snd_pcm_substream*) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cmipci_capture_pointer(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 return snd_cmipci_pcm_pointer(cm, &cm->channel[CM_CH_CAPT], substream);
}
