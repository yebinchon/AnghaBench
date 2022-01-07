
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lith; } ;
typedef TYPE_1__ vwsnd_dev_t ;
typedef int irqreturn_t ;


 int DBGEV (char*,int,void*) ;
 int IRQ_HANDLED ;
 unsigned int li_get_clear_intr_status (int *) ;
 int vwsnd_audio_read_intr (TYPE_1__*,unsigned int) ;
 int vwsnd_audio_write_intr (TYPE_1__*,unsigned int) ;

__attribute__((used)) static irqreturn_t vwsnd_audio_intr(int irq, void *dev_id)
{
 vwsnd_dev_t *devc = dev_id;
 unsigned int status;

 DBGEV("(irq=%d, dev_id=0x%p)\n", irq, dev_id);

 status = li_get_clear_intr_status(&devc->lith);
 vwsnd_audio_read_intr(devc, status);
 vwsnd_audio_write_intr(devc, status);
 return IRQ_HANDLED;
}
