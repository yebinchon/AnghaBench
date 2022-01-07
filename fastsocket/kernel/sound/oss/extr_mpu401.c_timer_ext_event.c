
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int devno; int timer_flag; } ;


 int SEQ_CONTINUE_TIMER () ;
 int SEQ_SONGPOS (int) ;
 int SEQ_START_TIMER () ;
 int SEQ_STOP_TIMER () ;
 int STORE (int ) ;


 int TMR_EXTERNAL ;



 int next_event_time ;
 int printk (char*,...) ;
 int setup_metronome (int) ;
 int stop_metronome (int) ;
 int timer_mode ;
 int tmr_running ;

__attribute__((used)) static void timer_ext_event(struct mpu_config *devc, int event, int parm)
{
 int midi_dev = devc->devno;

 if (!devc->timer_flag)
  return;

 switch (event)
 {
  case 132:
   printk("<MIDI clk>");
   break;

  case 129:
   printk("Ext MIDI start\n");
   if (!tmr_running)
   {
    if (timer_mode & TMR_EXTERNAL)
    {
     tmr_running = 1;
     setup_metronome(midi_dev);
     next_event_time = 0;
     STORE(SEQ_START_TIMER());
    }
   }
   break;

  case 128:
   printk("Ext MIDI stop\n");
   if (timer_mode & TMR_EXTERNAL)
   {
    tmr_running = 0;
    stop_metronome(midi_dev);
    STORE(SEQ_STOP_TIMER());
   }
   break;

  case 131:
   printk("Ext MIDI continue\n");
   if (timer_mode & TMR_EXTERNAL)
   {
    tmr_running = 1;
    setup_metronome(midi_dev);
    STORE(SEQ_CONTINUE_TIMER());
     }
     break;

  case 130:
   printk("Songpos: %d\n", parm);
   if (timer_mode & TMR_EXTERNAL)
   {
    STORE(SEQ_SONGPOS(parm));
   }
   break;
 }
}
