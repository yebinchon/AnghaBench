
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ model; int irq_mode; int irq_mode_16; int dev; scalar_t__ intr_active_16; int fullduplex; scalar_t__ intr_active; scalar_t__ midi_irq_cookie; int irq; } ;
typedef TYPE_1__ sb_devc ;


 int DMAbuf_inputintr (int ) ;
 int DMAbuf_outputintr (int ,int) ;
 int DSP_DATA_AVAIL ;
 int DSP_DATA_AVL16 ;




 int IRQ_STAT ;
 scalar_t__ MDL_SB16 ;
 int inb (int ) ;
 unsigned char sb_getmixer (TYPE_1__*,int ) ;
 int sb_midi_interrupt (TYPE_1__*) ;
 int uart401intr (int ,scalar_t__) ;

__attribute__((used)) static void sb_intr (sb_devc *devc)
{
 int status;
 unsigned char src = 0xff;

 if (devc->model == MDL_SB16)
 {
  src = sb_getmixer(devc, IRQ_STAT);

  if (src & 4)
   if(devc->midi_irq_cookie)
    uart401intr(devc->irq, devc->midi_irq_cookie);

  if (!(src & 3))
   return;
 }
 if (devc->intr_active && (!devc->fullduplex || (src & 0x01)))
 {
  switch (devc->irq_mode)
  {
   case 128:
    DMAbuf_outputintr(devc->dev, 1);
    break;

   case 130:
    DMAbuf_inputintr(devc->dev);
    break;

   case 131:
    break;

   case 129:
    sb_midi_interrupt(devc);
    break;

   default:

    ;
  }
 }
 else if (devc->intr_active_16 && (src & 0x02))
 {
  switch (devc->irq_mode_16)
  {
   case 128:
    DMAbuf_outputintr(devc->dev, 1);
    break;

   case 130:
    DMAbuf_inputintr(devc->dev);
    break;

   case 131:
    break;

   default:

    ;
  }
 }




 if (src & 0x01)
  status = inb(DSP_DATA_AVAIL);

 if (devc->model == MDL_SB16 && src & 0x02)
  status = inb(DSP_DATA_AVL16);
}
