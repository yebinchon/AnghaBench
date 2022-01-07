
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_2__* ops; TYPE_1__* runtime; int opened; } ;
struct TYPE_4__ {int (* trigger ) (struct snd_rawmidi_substream*,int ) ;} ;
struct TYPE_3__ {int tasklet; } ;


 int stub1 (struct snd_rawmidi_substream*,int ) ;
 int tasklet_kill (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline void snd_rawmidi_output_trigger(struct snd_rawmidi_substream *substream,int up)
{
 if (!substream->opened)
  return;
 if (up) {
  tasklet_schedule(&substream->runtime->tasklet);
 } else {
  tasklet_kill(&substream->runtime->tasklet);
  substream->ops->trigger(substream, 0);
 }
}
