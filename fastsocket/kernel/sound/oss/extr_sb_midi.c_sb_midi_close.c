
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__ opened; scalar_t__ input_opened; scalar_t__ intr_active; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;


 TYPE_3__** midi_devs ;
 int sb_dsp_reset (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sb_midi_close(int dev)
{
 sb_devc *devc = midi_devs[dev]->devc;
 unsigned long flags;

 if (devc == ((void*)0))
  return;

 spin_lock_irqsave(&devc->lock, flags);
 sb_dsp_reset(devc);
 devc->intr_active = 0;
 devc->input_opened = 0;
 devc->opened = 0;
 spin_unlock_irqrestore(&devc->lock, flags);
}
