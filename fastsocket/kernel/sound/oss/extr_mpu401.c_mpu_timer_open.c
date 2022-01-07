
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpu_config {int dummy; } ;
struct TYPE_2__ {int devlink; } ;


 int EBUSY ;
 int curr_tempo ;
 int curr_timebase ;
 struct mpu_config* dev_conf ;
 int hw_timebase ;
 scalar_t__ metronome_mode ;
 int mpu_cmd (int,int,int) ;
 int set_timebase (int,int) ;
 int set_timer_mode (int) ;
 TYPE_1__** sound_timer_devs ;
 int timer_open ;
 int tmr_reset (struct mpu_config*) ;

__attribute__((used)) static int mpu_timer_open(int dev, int mode)
{
 int midi_dev = sound_timer_devs[dev]->devlink;
 struct mpu_config *devc= &dev_conf[midi_dev];

 if (timer_open)
  return -EBUSY;

 tmr_reset(devc);
 curr_tempo = 50;
 mpu_cmd(midi_dev, 0xE0, 50);
 curr_timebase = hw_timebase = 120;
 set_timebase(midi_dev, 120);
 timer_open = 1;
 metronome_mode = 0;
 set_timer_mode(midi_dev);

 mpu_cmd(midi_dev, 0xe7, 0x04);
 mpu_cmd(midi_dev, 0x95, 0);

 return 0;
}
