
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct snd_amd7930 {int flags; size_t c_cur; size_t c_orig; } ;
typedef int snd_pcm_uframes_t ;


 int AMD7930_FLAG_CAPTURE ;
 int bytes_to_frames (int ,size_t) ;
 struct snd_amd7930* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_amd7930_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_amd7930 *amd = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(amd->flags & AMD7930_FLAG_CAPTURE))
  return 0;

 ptr = amd->c_cur - amd->c_orig;
 return bytes_to_frames(substream->runtime, ptr);
}
