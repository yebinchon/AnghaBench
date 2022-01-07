
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* saved_regs; int lock; TYPE_1__** mix_devices; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_7__ {int regno; int mutereg; } ;


 unsigned char ad_read (TYPE_2__*,int) ;
 int ad_write (TYPE_2__*,int,unsigned char) ;
 int change_bits (TYPE_2__*,unsigned char*,unsigned char*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ad1848_mixer_set_channel(ad1848_info *devc, int dev, int value, int channel)
{
 int regoffs, muteregoffs;
 unsigned char val, muteval;
 unsigned long flags;

 regoffs = devc->mix_devices[dev][channel].regno;
 muteregoffs = devc->mix_devices[dev][channel].mutereg;
 val = ad_read(devc, regoffs);

 if (muteregoffs != regoffs) {
  muteval = ad_read(devc, muteregoffs);
  change_bits(devc, &val, &muteval, dev, channel, value);
 }
 else
  change_bits(devc, &val, &val, dev, channel, value);

 spin_lock_irqsave(&devc->lock,flags);
 ad_write(devc, regoffs, val);
 devc->saved_regs[regoffs] = val;
 if (muteregoffs != regoffs) {
  ad_write(devc, muteregoffs, muteval);
  devc->saved_regs[muteregoffs] = muteval;
 }
 spin_unlock_irqrestore(&devc->lock,flags);
}
