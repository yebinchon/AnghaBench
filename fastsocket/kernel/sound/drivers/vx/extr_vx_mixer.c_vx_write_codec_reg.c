
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {int chip_status; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_codec ) (struct vx_core*,int,unsigned int) ;} ;


 int VX_STAT_IS_STALE ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct vx_core*,int,unsigned int) ;

__attribute__((used)) static void vx_write_codec_reg(struct vx_core *chip, int codec, unsigned int data)
{
 unsigned long flags;

 if (snd_BUG_ON(!chip->ops->write_codec))
  return;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 spin_lock_irqsave(&chip->lock, flags);
 chip->ops->write_codec(chip, codec, data);
 spin_unlock_irqrestore(&chip->lock, flags);
}
