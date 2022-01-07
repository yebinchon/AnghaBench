
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;
struct snd_opl3 {int chset; } ;


 int opl3_ops ;
 int snd_midi_process_event (int *,struct snd_seq_event*,int ) ;

__attribute__((used)) static int snd_opl3_synth_event_input(struct snd_seq_event * ev, int direct,
          void *private_data, int atomic, int hop)
{
 struct snd_opl3 *opl3 = private_data;

 snd_midi_process_event(&opl3_ops, ev, opl3->chset);
 return 0;
}
