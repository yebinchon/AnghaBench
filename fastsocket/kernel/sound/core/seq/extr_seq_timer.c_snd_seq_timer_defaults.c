
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subdevice; int device; int card; int dev_sclass; int dev_class; } ;
struct snd_seq_timer {int ppq; int tempo; int skew_base; int skew; int preferred_resolution; TYPE_1__ alsa_id; int type; scalar_t__ running; int tick; } ;


 int SKEW_BASE ;
 int SNDRV_SEQ_TIMER_ALSA ;
 int seq_default_timer_card ;
 int seq_default_timer_class ;
 int seq_default_timer_device ;
 int seq_default_timer_resolution ;
 int seq_default_timer_sclass ;
 int seq_default_timer_subdevice ;
 int snd_seq_timer_set_tick_resolution (int *,int,int) ;

void snd_seq_timer_defaults(struct snd_seq_timer * tmr)
{

 tmr->ppq = 96;
 tmr->tempo = 500000;
 snd_seq_timer_set_tick_resolution(&tmr->tick, tmr->tempo, tmr->ppq);
 tmr->running = 0;

 tmr->type = SNDRV_SEQ_TIMER_ALSA;
 tmr->alsa_id.dev_class = seq_default_timer_class;
 tmr->alsa_id.dev_sclass = seq_default_timer_sclass;
 tmr->alsa_id.card = seq_default_timer_card;
 tmr->alsa_id.device = seq_default_timer_device;
 tmr->alsa_id.subdevice = seq_default_timer_subdevice;
 tmr->preferred_resolution = seq_default_timer_resolution;

 tmr->skew = tmr->skew_base = SKEW_BASE;
}
