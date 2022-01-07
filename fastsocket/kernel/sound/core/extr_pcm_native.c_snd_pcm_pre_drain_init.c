
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_pcm_substream* trigger_master; } ;



__attribute__((used)) static int snd_pcm_pre_drain_init(struct snd_pcm_substream *substream, int state)
{
 substream->runtime->trigger_master = substream;
 return 0;
}
