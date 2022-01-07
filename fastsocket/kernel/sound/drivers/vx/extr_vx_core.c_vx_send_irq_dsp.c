
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int CVR ;
 int CVR_HC ;
 int EIO ;
 scalar_t__ VXP_IRQ_OFFSET ;
 int VX_CVR ;
 scalar_t__ snd_vx_check_reg_bit (struct vx_core*,int ,int,int ,int) ;
 scalar_t__ vx_has_new_dsp (struct vx_core*) ;
 int vx_outb (struct vx_core*,int ,int) ;

__attribute__((used)) static int vx_send_irq_dsp(struct vx_core *chip, int num)
{
 int nirq;


 if (snd_vx_check_reg_bit(chip, VX_CVR, CVR_HC, 0, 200) < 0)
  return -EIO;

 nirq = num;
 if (vx_has_new_dsp(chip))
  nirq += VXP_IRQ_OFFSET;
 vx_outb(chip, CVR, (nirq >> 1) | CVR_HC);
 return 0;
}
