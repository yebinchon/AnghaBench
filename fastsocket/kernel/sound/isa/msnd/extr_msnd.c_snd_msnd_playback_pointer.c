
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct snd_msnd {int playDMAPos; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,int ) ;
 struct snd_msnd* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_msnd_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_msnd *chip = snd_pcm_substream_chip(substream);

 return bytes_to_frames(substream->runtime, chip->playDMAPos);
}
