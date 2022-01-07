
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {int reg_lock; } ;


 int CORBCTL ;
 int RIRBCTL ;
 int azx_writeb (struct azx*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void azx_free_cmd_io(struct azx *chip)
{
 spin_lock_irq(&chip->reg_lock);

 azx_writeb(chip, RIRBCTL, 0);
 azx_writeb(chip, CORBCTL, 0);
 spin_unlock_irq(&chip->reg_lock);
}
