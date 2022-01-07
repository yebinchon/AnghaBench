
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int dummy; } ;


 int TIMER_ARMED ;
 int TIMER_NOT_ARMED ;
 int TMR_INTERNAL ;
 struct mpu_config* dev_conf ;
 int mpu_cmd (int,int,int ) ;
 int set_timer_mode (int) ;
 int timer_mode ;
 int tmr_reset (struct mpu_config*) ;
 int tmr_running ;

__attribute__((used)) static int mpu_start_timer(int midi_dev)
{
 struct mpu_config *devc= &dev_conf[midi_dev];

 tmr_reset(devc);
 set_timer_mode(midi_dev);

 if (tmr_running)
  return TIMER_NOT_ARMED;

 if (timer_mode & TMR_INTERNAL)
 {
  mpu_cmd(midi_dev, 0x02, 0);
  tmr_running = 1;
  return TIMER_NOT_ARMED;
 }
 else
 {
  mpu_cmd(midi_dev, 0x35, 0);
  mpu_cmd(midi_dev, 0x38, 0);
  mpu_cmd(midi_dev, 0x39, 0);
  mpu_cmd(midi_dev, 0x97, 0);
 }
 return TIMER_ARMED;
}
