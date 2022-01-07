
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ io_base; } ;
struct TYPE_7__ {TYPE_1__ hw; int audio_mode; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_8__ {scalar_t__ devc; } ;


 int IRQ_REQ ;
 int PCM_ENABLE_INPUT ;
 scalar_t__ STATR ;
 int WACMD_INPUTSTOP ;
 TYPE_5__** audio_devs ;
 int inb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waveartist_cmd1 (TYPE_2__*,int ) ;
 int waveartist_iack (TYPE_2__*) ;
 int waveartist_lock ;

__attribute__((used)) static void
waveartist_halt_input(int dev)
{
 wavnc_info *devc = (wavnc_info *) audio_devs[dev]->devc;
 unsigned long flags;

 spin_lock_irqsave(&waveartist_lock, flags);




 waveartist_cmd1(devc, WACMD_INPUTSTOP);

 devc->audio_mode &= ~PCM_ENABLE_INPUT;





 if (inb(devc->hw.io_base + STATR) & IRQ_REQ)
  waveartist_iack(devc);



 spin_unlock_irqrestore(&waveartist_lock, flags);
}
