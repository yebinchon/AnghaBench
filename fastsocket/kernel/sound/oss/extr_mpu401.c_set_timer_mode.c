
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TMR_INTERNAL ;
 int TMR_MODE_CLS ;
 int TMR_MODE_FSK ;
 int TMR_MODE_MIDI ;
 int TMR_MODE_SMPTE ;
 int mpu_cmd (int,int,int ) ;
 int timer_mode ;

__attribute__((used)) static void set_timer_mode(int midi_dev)
{
 if (timer_mode & TMR_MODE_CLS)
  mpu_cmd(midi_dev, 0x3c, 0);
 else if (timer_mode & TMR_MODE_SMPTE)
  mpu_cmd(midi_dev, 0x3d, 0);

 if (timer_mode & TMR_INTERNAL)
 {
    mpu_cmd(midi_dev, 0x80, 0);
 }
 else
 {
  if (timer_mode & (TMR_MODE_MIDI | TMR_MODE_CLS))
  {
   mpu_cmd(midi_dev, 0x82, 0);
   mpu_cmd(midi_dev, 0x91, 0);
  }
  else if (timer_mode & TMR_MODE_FSK)
   mpu_cmd(midi_dev, 0x81, 0);
 }
}
