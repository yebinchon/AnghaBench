
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {int clock_source; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_clock_source ) (struct vx_core*,int) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct vx_core*,int) ;
 int vx_toggle_dac_mute (struct vx_core*,int) ;

__attribute__((used)) static void vx_change_clock_source(struct vx_core *chip, int source)
{
 unsigned long flags;


 vx_toggle_dac_mute(chip, 1);
 spin_lock_irqsave(&chip->lock, flags);
 chip->ops->set_clock_source(chip, source);
 chip->clock_source = source;
 spin_unlock_irqrestore(&chip->lock, flags);

 vx_toggle_dac_mute(chip, 0);
}
