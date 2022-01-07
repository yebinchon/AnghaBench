
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int major; int minor; int lock; } ;
typedef TYPE_1__ sb_devc ;


 int DDB (int ) ;
 int DSP_DATA_AVAIL ;
 int DSP_READ ;
 int inb (int ) ;
 int printk (char*,...) ;
 int sb_dsp_command (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dsp_get_vers(sb_devc * devc)
{
 int i;

 unsigned long flags;

 DDB(printk("Entered dsp_get_vers()\n"));
 spin_lock_irqsave(&devc->lock, flags);
 devc->major = devc->minor = 0;
 sb_dsp_command(devc, 0xe1);

 for (i = 100000; i; i--)
 {
  if (inb(DSP_DATA_AVAIL) & 0x80)
  {
   if (devc->major == 0)
    devc->major = inb(DSP_READ);
   else
   {
    devc->minor = inb(DSP_READ);
    break;
   }
  }
 }
 spin_unlock_irqrestore(&devc->lock, flags);
 DDB(printk("DSP version %d.%02d\n", devc->major, devc->minor));
}
