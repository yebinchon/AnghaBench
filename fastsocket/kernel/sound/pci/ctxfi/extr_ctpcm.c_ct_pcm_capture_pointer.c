
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long buffer_size; struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int dummy; } ;
struct ct_atc {unsigned long (* pcm_capture_position ) (struct ct_atc*,struct ct_atc_pcm*) ;} ;
typedef unsigned long snd_pcm_uframes_t ;


 unsigned long bytes_to_frames (struct snd_pcm_runtime*,unsigned long) ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 unsigned long stub1 (struct ct_atc*,struct ct_atc_pcm*) ;

__attribute__((used)) static snd_pcm_uframes_t
ct_pcm_capture_pointer(struct snd_pcm_substream *substream)
{
 unsigned long position;
 struct ct_atc *atc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ct_atc_pcm *apcm = runtime->private_data;


 position = atc->pcm_capture_position(atc, apcm);
 position = bytes_to_frames(runtime, position);
 if (position >= runtime->buffer_size)
  position = 0;
 return position;
}
