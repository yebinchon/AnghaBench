
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct snd_pcm_indirect2 {int sw_io; int pointer_calls; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,int ) ;

snd_pcm_uframes_t
snd_pcm_indirect2_pointer(struct snd_pcm_substream *substream,
     struct snd_pcm_indirect2 *rec)
{



 return bytes_to_frames(substream->runtime, rec->sw_io);
}
