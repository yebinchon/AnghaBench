
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int rate; } ;
struct snd_pcm_runtime {int buffer_size; } ;



__attribute__((used)) static inline int usX2Y_iso_frames_per_buffer(struct snd_pcm_runtime *runtime,
           struct usX2Ydev * usX2Y)
{
 return (runtime->buffer_size * 1000) / usX2Y->rate + 1;
}
