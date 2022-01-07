
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int opened; int intr_active; int input_opened; void (* midi_input_intr ) (int,unsigned char) ;scalar_t__ midi_broken; int irq_mode; int lock; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_6__ {TYPE_1__* devc; } ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int IMODE_MIDI ;
 int OPEN_READ ;
 TYPE_4__** midi_devs ;
 int sb_dsp_command (TYPE_1__*,int) ;
 int sb_dsp_reset (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sb_midi_open(int dev, int mode,
      void (*input) (int dev, unsigned char data),
      void (*output) (int dev)
)
{
 sb_devc *devc = midi_devs[dev]->devc;
 unsigned long flags;

 if (devc == ((void*)0))
  return -ENXIO;

 spin_lock_irqsave(&devc->lock, flags);
 if (devc->opened)
 {
  spin_unlock_irqrestore(&devc->lock, flags);
  return -EBUSY;
 }
 devc->opened = 1;
 spin_unlock_irqrestore(&devc->lock, flags);

 devc->irq_mode = IMODE_MIDI;
 devc->midi_broken = 0;

 sb_dsp_reset(devc);

 if (!sb_dsp_command(devc, 0x35))
 {
    devc->opened = 0;
    return -EIO;
 }
 devc->intr_active = 1;

 if (mode & OPEN_READ)
 {
  devc->input_opened = 1;
  devc->midi_input_intr = input;
 }
 return 0;
}
