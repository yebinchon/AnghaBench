
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opened; int intr_active; int input_opened; void (* midi_input_intr ) (int,unsigned char) ;int lock; } ;
typedef TYPE_1__ vmidi_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 int EBUSY ;
 int ENXIO ;
 int OPEN_READ ;
 TYPE_2__** midi_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int v_midi_open (int dev, int mode,
       void (*input) (int dev, unsigned char data),
       void (*output) (int dev)
)
{
 vmidi_devc *devc = midi_devs[dev]->devc;
 unsigned long flags;

 if (devc == ((void*)0))
  return -(ENXIO);

 spin_lock_irqsave(&devc->lock,flags);
 if (devc->opened)
 {
  spin_unlock_irqrestore(&devc->lock,flags);
  return -(EBUSY);
 }
 devc->opened = 1;
 spin_unlock_irqrestore(&devc->lock,flags);

 devc->intr_active = 1;

 if (mode & OPEN_READ)
 {
  devc->input_opened = 1;
  devc->midi_input_intr = input;
 }

 return 0;
}
