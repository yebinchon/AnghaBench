
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_2__* runtime; TYPE_1__* ops; int opened; } ;
struct TYPE_4__ {int tasklet; scalar_t__ event; } ;
struct TYPE_3__ {int (* trigger ) (struct snd_rawmidi_substream*,int) ;} ;


 int stub1 (struct snd_rawmidi_substream*,int) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void snd_rawmidi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 if (!substream->opened)
  return;
 substream->ops->trigger(substream, up);
 if (!up && substream->runtime->event)
  tasklet_kill(&substream->runtime->tasklet);
}
