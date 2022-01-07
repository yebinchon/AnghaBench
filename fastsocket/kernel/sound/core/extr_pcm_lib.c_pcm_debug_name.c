
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* pcm; int number; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int device; TYPE_2__* card; } ;


 int snprintf (char*,size_t,char*,int,int,char,int ) ;

__attribute__((used)) static void pcm_debug_name(struct snd_pcm_substream *substream,
      char *name, size_t len)
{
 snprintf(name, len, "pcmC%dD%d%c:%d",
   substream->pcm->card->number,
   substream->pcm->device,
   substream->stream ? 'c' : 'p',
   substream->number);
}
