
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int lock; } ;


 int CSUER ;
 int RUER ;
 int XX_UER_CBITS_OFFSET_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vx_is_pcmcia (struct vx_core*) ;
 int vx_outb (struct vx_core*,int ,int) ;
 int vx_outl (struct vx_core*,int ,int) ;

__attribute__((used)) static void vx_write_one_cbit(struct vx_core *chip, int index, int val)
{
 unsigned long flags;
 val = !!val;
 spin_lock_irqsave(&chip->lock, flags);
 if (vx_is_pcmcia(chip)) {
  vx_outb(chip, CSUER, 0);
  vx_outb(chip, RUER, (val << 7) | (index & XX_UER_CBITS_OFFSET_MASK));
 } else {
  vx_outl(chip, CSUER, 0);
  vx_outl(chip, RUER, (val << 7) | (index & XX_UER_CBITS_OFFSET_MASK));
 }
 spin_unlock_irqrestore(&chip->lock, flags);
}
