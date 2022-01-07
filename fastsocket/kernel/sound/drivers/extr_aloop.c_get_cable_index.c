
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {unsigned int stream; TYPE_1__* pcm; } ;
struct TYPE_2__ {int device; } ;



__attribute__((used)) static unsigned int get_cable_index(struct snd_pcm_substream *substream)
{
 if (!substream->pcm->device)
  return substream->stream;
 else
  return !substream->stream;
}
