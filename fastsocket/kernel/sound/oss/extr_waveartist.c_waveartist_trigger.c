
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int open_mode; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_6__ {int audio_mode; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_7__ {scalar_t__ portc; scalar_t__ devc; } ;


 int DEBUG_TRIGGER ;
 int OPEN_READ ;
 int OPEN_WRITE ;
 int PCM_ENABLE_INPUT ;
 int PCM_ENABLE_OUTPUT ;
 int WACMD_INPUTSTART ;
 int WACMD_OUTPUTSTART ;
 TYPE_4__** audio_devs ;
 int debug_flg ;
 int printk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waveartist_cmd1 (TYPE_2__*,int ) ;
 int waveartist_lock ;

__attribute__((used)) static void
waveartist_trigger(int dev, int state)
{
 wavnc_info *devc = (wavnc_info *) audio_devs[dev]->devc;
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;
 unsigned long flags;

 if (debug_flg & DEBUG_TRIGGER) {
  printk("wavnc: audio trigger ");
  if (state & PCM_ENABLE_INPUT)
   printk("in ");
  if (state & PCM_ENABLE_OUTPUT)
   printk("out");
  printk("\n");
 }

 spin_lock_irqsave(&waveartist_lock, flags);

 state &= devc->audio_mode;

 if (portc->open_mode & OPEN_READ &&
     state & PCM_ENABLE_INPUT)



  waveartist_cmd1(devc, WACMD_INPUTSTART);

 if (portc->open_mode & OPEN_WRITE &&
     state & PCM_ENABLE_OUTPUT)



  waveartist_cmd1(devc, WACMD_OUTPUTSTART);

 spin_unlock_irqrestore(&waveartist_lock, flags);
}
