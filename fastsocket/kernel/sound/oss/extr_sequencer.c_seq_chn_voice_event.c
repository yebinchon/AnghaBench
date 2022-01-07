
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* aftertouch ) (size_t,int,int) ;int (* kill_note ) (size_t,int,int,int) ;int (* start_note ) (size_t,int,int,int) ;int (* setup_voice ) (size_t,int,int) ;TYPE_1__* chn_info; int (* set_instr ) (size_t,int,int ) ;scalar_t__ alloc_voice; } ;
struct TYPE_3__ {int pgm_num; } ;





 scalar_t__ SEQ_2 ;
 int alloc_voice (size_t,int,int) ;
 int chn ;
 int cmd ;
 size_t dev ;
 int find_voice (size_t,int,int) ;
 int max_synthdev ;
 int note ;
 int num_synths ;
 int parm ;
 scalar_t__ seq_mode ;
 int stub1 (size_t,int,int ) ;
 int stub2 (size_t,int,int) ;
 int stub3 (size_t,int,int,int) ;
 int stub4 (size_t,int,int,int) ;
 int stub5 (size_t,int,int) ;
 TYPE_2__** synth_devs ;
 int synth_open_mask ;

__attribute__((used)) static void seq_chn_voice_event(unsigned char *event_rec)
{






 int voice = -1;

 if ((int) event_rec[1] > max_synthdev || synth_devs[event_rec[1]] == ((void*)0))
  return;
 if (!(synth_open_mask & (1 << event_rec[1])))
  return;
 if (!synth_devs[event_rec[1]])
  return;

 if (seq_mode == SEQ_2)
 {
  if (synth_devs[event_rec[1]]->alloc_voice)
   voice = find_voice(event_rec[1], event_rec[3], event_rec[4]);

  if (event_rec[2] == 128 && event_rec[5] == 0)
  {
   event_rec[2] = 129;
   event_rec[5] = 64;
  }
 }

 switch (event_rec[2])
 {
  case 128:
   if (event_rec[4] > 127 && event_rec[4] != 255)
    return;

   if (voice == -1 && seq_mode == SEQ_2 && synth_devs[event_rec[1]]->alloc_voice)
   {

    voice = alloc_voice(event_rec[1], event_rec[3], event_rec[4]);
   }
   if (voice == -1)
    voice = event_rec[3];

   if (seq_mode == SEQ_2 && (int) event_rec[1] < num_synths)
   {





    if (event_rec[3] == 9)
    {
     synth_devs[event_rec[1]]->set_instr(event_rec[1], voice, 128 + event_rec[4]);
     synth_devs[event_rec[1]]->chn_info[event_rec[3]].pgm_num = 128 + event_rec[4];
    }
    synth_devs[event_rec[1]]->setup_voice(event_rec[1], voice, event_rec[3]);
   }
   synth_devs[event_rec[1]]->start_note(event_rec[1], voice, event_rec[4], event_rec[5]);
   break;

  case 129:
   if (voice == -1)
    voice = event_rec[3];
   synth_devs[event_rec[1]]->kill_note(event_rec[1], voice, event_rec[4], event_rec[5]);
   break;

  case 130:
   if (voice == -1)
    voice = event_rec[3];
   synth_devs[event_rec[1]]->aftertouch(event_rec[1], voice, event_rec[5]);
   break;

  default:;
 }





}
