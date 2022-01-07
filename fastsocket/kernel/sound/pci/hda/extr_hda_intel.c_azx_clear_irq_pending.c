
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct azx {int num_streams; int reg_lock; TYPE_1__* azx_dev; } ;
struct TYPE_2__ {scalar_t__ irq_pending; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void azx_clear_irq_pending(struct azx *chip)
{
 int i;

 spin_lock_irq(&chip->reg_lock);
 for (i = 0; i < chip->num_streams; i++)
  chip->azx_dev[i].irq_pending = 0;
 spin_unlock_irq(&chip->reg_lock);
}
