
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int my_mididev; int (* midi_input_intr ) (int ,unsigned char) ;scalar_t__ input_opened; } ;
typedef TYPE_1__ sb_devc ;


 int DSP_READ ;
 unsigned char inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned char) ;

void sb_midi_interrupt(sb_devc * devc)
{
 unsigned long flags;
 unsigned char data;

 if (devc == ((void*)0))
  return;

 spin_lock_irqsave(&devc->lock, flags);

 data = inb(DSP_READ);
 if (devc->input_opened)
  devc->midi_input_intr(devc->my_mididev, data);

 spin_unlock_irqrestore(&devc->lock, flags);
}
