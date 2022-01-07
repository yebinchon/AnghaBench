
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl3 {int connection_reg; scalar_t__ hardware; int max_voices; int (* command ) (struct snd_opl3*,int,int) ;scalar_t__ use_time; TYPE_1__* voices; struct snd_hwdep* hwdep; } ;
struct snd_hwdep {int open_mutex; scalar_t__ used; } ;
struct TYPE_2__ {int keyon_reg; scalar_t__ time; int state; } ;


 int EBUSY ;
 int MAX_OPL3_VOICES ;
 scalar_t__ OPL3_HW_OPL3 ;
 int OPL3_REG_CONNECTION_SELECT ;
 int OPL3_RIGHT ;
 int SNDRV_OPL3_ST_OFF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_opl3_reset (struct snd_opl3*) ;
 int stub1 (struct snd_opl3*,int,int) ;

int snd_opl3_synth_setup(struct snd_opl3 * opl3)
{
 int idx;
 struct snd_hwdep *hwdep = opl3->hwdep;

 mutex_lock(&hwdep->open_mutex);
 if (hwdep->used) {
  mutex_unlock(&hwdep->open_mutex);
  return -EBUSY;
 }
 hwdep->used++;
 mutex_unlock(&hwdep->open_mutex);

 snd_opl3_reset(opl3);

 for (idx = 0; idx < MAX_OPL3_VOICES; idx++) {
  opl3->voices[idx].state = SNDRV_OPL3_ST_OFF;
  opl3->voices[idx].time = 0;
  opl3->voices[idx].keyon_reg = 0x00;
 }
 opl3->use_time = 0;
 opl3->connection_reg = 0x00;
 if (opl3->hardware >= OPL3_HW_OPL3) {

  opl3->command(opl3, OPL3_RIGHT | OPL3_REG_CONNECTION_SELECT,
     opl3->connection_reg);
  opl3->max_voices = MAX_OPL3_VOICES;
 }
 return 0;
}
