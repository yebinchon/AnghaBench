
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pas_midi_interrupt () ;
 int pas_pcm_interrupt (int,int) ;
 int pas_read (int) ;
 int pas_write (int,int) ;

__attribute__((used)) static irqreturn_t pasintr(int irq, void *dev_id)
{
 int status;

 status = pas_read(0x0B89);
 pas_write(status, 0x0B89);

 if (status & 0x08)
 {
    pas_pcm_interrupt(status, 1);
    status &= ~0x08;
 }
 if (status & 0x10)
 {
    pas_midi_interrupt();
    status &= ~0x10;
 }
 return IRQ_HANDLED;
}
