
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;


 TYPE_3__** audio_devs ;
 int sb_dsp_reset (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sb1_audio_halt_xfer(int dev)
{
 unsigned long flags;
 sb_devc *devc = audio_devs[dev]->devc;

 spin_lock_irqsave(&devc->lock, flags);
 sb_dsp_reset(devc);
 spin_unlock_irqrestore(&devc->lock, flags);
}
