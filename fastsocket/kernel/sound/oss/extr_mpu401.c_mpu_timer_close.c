
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devlink; } ;


 int mpu_cmd (int,int,int ) ;
 TYPE_1__** sound_timer_devs ;
 int stop_metronome (int) ;
 scalar_t__ timer_open ;
 scalar_t__ tmr_running ;

__attribute__((used)) static void mpu_timer_close(int dev)
{
 int midi_dev = sound_timer_devs[dev]->devlink;

 timer_open = tmr_running = 0;
 mpu_cmd(midi_dev, 0x15, 0);
 mpu_cmd(midi_dev, 0x94, 0);
 mpu_cmd(midi_dev, 0x8c, 0);
 stop_metronome(midi_dev);
}
