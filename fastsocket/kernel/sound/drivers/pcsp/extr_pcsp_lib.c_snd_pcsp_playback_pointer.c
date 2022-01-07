
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {unsigned int playback_ptr; int substream_lock; } ;
struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,unsigned int) ;
 struct snd_pcsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_pcsp_playback_pointer(struct snd_pcm_substream
         *substream)
{
 struct snd_pcsp *chip = snd_pcm_substream_chip(substream);
 unsigned int pos;
 spin_lock(&chip->substream_lock);
 pos = chip->playback_ptr;
 spin_unlock(&chip->substream_lock);
 return bytes_to_frames(substream->runtime, pos);
}
