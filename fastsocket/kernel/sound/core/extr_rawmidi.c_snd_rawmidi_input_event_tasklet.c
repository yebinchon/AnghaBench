
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int (* event ) (struct snd_rawmidi_substream*) ;} ;


 int stub1 (struct snd_rawmidi_substream*) ;

__attribute__((used)) static void snd_rawmidi_input_event_tasklet(unsigned long data)
{
 struct snd_rawmidi_substream *substream = (struct snd_rawmidi_substream *)data;
 substream->runtime->event(substream);
}
