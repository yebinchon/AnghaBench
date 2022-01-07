
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int tone_state; size_t tone_cadence_state; TYPE_2__* cadence_t; } ;
struct TYPE_14__ {int gain1; int freq1; scalar_t__ gain0; int freq0; int tone_index; } ;
struct TYPE_13__ {size_t elements_used; int termination; TYPE_1__* ce; } ;
struct TYPE_12__ {int index; int tone_off_time; int tone_on_time; int gain1; int freq1; scalar_t__ gain0; int freq0; } ;
typedef TYPE_3__ IXJ_TONE ;
typedef TYPE_4__ IXJ ;





 int ixj_cpt_stop (TYPE_4__*) ;
 int ixj_init_tone (TYPE_4__*,TYPE_3__*) ;
 int ixj_play_tone (TYPE_4__*,int ) ;
 int ixj_set_tone_off (int ,TYPE_4__*) ;
 int ixj_set_tone_on (int ,TYPE_4__*) ;

__attribute__((used)) static void ixj_tone_timeout(IXJ *j)
{
 IXJ_TONE ti;

 j->tone_state++;
 if (j->tone_state == 3) {
  j->tone_state = 0;
  if (j->cadence_t) {
   j->tone_cadence_state++;
   if (j->tone_cadence_state >= j->cadence_t->elements_used) {
    switch (j->cadence_t->termination) {
    case 130:
     ixj_cpt_stop(j);
     break;
    case 128:
     j->tone_cadence_state--;
     ixj_play_tone(j, j->cadence_t->ce[j->tone_cadence_state].index);
     break;
    case 129:
     j->tone_cadence_state = 0;
     if (j->cadence_t->ce[j->tone_cadence_state].freq0) {
      ti.tone_index = j->cadence_t->ce[j->tone_cadence_state].index;
      ti.freq0 = j->cadence_t->ce[j->tone_cadence_state].freq0;
      ti.gain0 = j->cadence_t->ce[j->tone_cadence_state].gain0;
      ti.freq1 = j->cadence_t->ce[j->tone_cadence_state].freq1;
      ti.gain1 = j->cadence_t->ce[j->tone_cadence_state].gain1;
      ixj_init_tone(j, &ti);
     }
     ixj_set_tone_on(j->cadence_t->ce[0].tone_on_time, j);
     ixj_set_tone_off(j->cadence_t->ce[0].tone_off_time, j);
     ixj_play_tone(j, j->cadence_t->ce[0].index);
     break;
    }
   } else {
    if (j->cadence_t->ce[j->tone_cadence_state].gain0) {
     ti.tone_index = j->cadence_t->ce[j->tone_cadence_state].index;
     ti.freq0 = j->cadence_t->ce[j->tone_cadence_state].freq0;
     ti.gain0 = j->cadence_t->ce[j->tone_cadence_state].gain0;
     ti.freq1 = j->cadence_t->ce[j->tone_cadence_state].freq1;
     ti.gain1 = j->cadence_t->ce[j->tone_cadence_state].gain1;
     ixj_init_tone(j, &ti);
    }
    ixj_set_tone_on(j->cadence_t->ce[j->tone_cadence_state].tone_on_time, j);
    ixj_set_tone_off(j->cadence_t->ce[j->tone_cadence_state].tone_off_time, j);
    ixj_play_tone(j, j->cadence_t->ce[j->tone_cadence_state].index);
   }
  }
 }
}
