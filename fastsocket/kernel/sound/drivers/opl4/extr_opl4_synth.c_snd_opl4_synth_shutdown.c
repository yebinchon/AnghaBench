
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl4 {int reg_lock; TYPE_1__* voices; } ;
struct TYPE_2__ {int reg_misc; } ;


 int OPL4_KEY_ON_BIT ;
 int OPL4_MAX_VOICES ;
 scalar_t__ OPL4_REG_MISC ;
 int snd_opl4_write (struct snd_opl4*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_opl4_synth_shutdown(struct snd_opl4 *opl4)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&opl4->reg_lock, flags);
 for (i = 0; i < OPL4_MAX_VOICES; i++)
  snd_opl4_write(opl4, OPL4_REG_MISC + i,
          opl4->voices[i].reg_misc & ~OPL4_KEY_ON_BIT);
 spin_unlock_irqrestore(&opl4->reg_lock, flags);
}
