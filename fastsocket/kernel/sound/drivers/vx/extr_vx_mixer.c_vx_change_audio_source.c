
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {int chip_status; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change_audio_source ) (struct vx_core*,int) ;} ;


 int VX_STAT_IS_STALE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct vx_core*,int) ;

__attribute__((used)) static void vx_change_audio_source(struct vx_core *chip, int src)
{
 unsigned long flags;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 spin_lock_irqsave(&chip->lock, flags);
 chip->ops->change_audio_source(chip, src);
 spin_unlock_irqrestore(&chip->lock, flags);
}
