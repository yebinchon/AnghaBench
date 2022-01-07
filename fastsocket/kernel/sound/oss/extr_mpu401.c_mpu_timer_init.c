
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpu_config {int timer_flag; int version; int revision; } ;
struct TYPE_3__ {int devlink; } ;


 int TMR_EXTERNAL ;
 int TMR_INTERNAL ;
 int TMR_MODE_CLS ;
 int TMR_MODE_FSK ;
 int TMR_MODE_MIDI ;
 struct mpu_config* dev_conf ;
 int max_timebase ;
 TYPE_1__ mpu_timer ;
 int sound_alloc_timerdev () ;
 TYPE_1__** sound_timer_devs ;
 int timer_caps ;
 int timer_initialized ;
 int timer_mode ;

__attribute__((used)) static int mpu_timer_init(int midi_dev)
{
 struct mpu_config *devc;
 int n;

 devc = &dev_conf[midi_dev];

 if (timer_initialized)
  return -1;

 timer_initialized = 1;

 mpu_timer.devlink = midi_dev;
 dev_conf[midi_dev].timer_flag = 1;

 n = sound_alloc_timerdev();
 if (n == -1)
  n = 0;
 sound_timer_devs[n] = &mpu_timer;

 if (devc->version < 0x20)
  timer_caps = TMR_INTERNAL | TMR_EXTERNAL | TMR_MODE_FSK | TMR_MODE_MIDI;
 else
 {
  if (devc->revision)
   timer_caps |= TMR_EXTERNAL | TMR_MODE_MIDI;

  if (devc->revision & 0x02)
   timer_caps |= TMR_MODE_CLS;


  if (devc->revision & 0x40)
   max_timebase = 10;
 }

 timer_mode = (TMR_INTERNAL | TMR_MODE_MIDI) & timer_caps;
 return n;

}
