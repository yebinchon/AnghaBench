
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int EIO ;
 int IRQ_RESET_CHK ;
 int ISR_CHK ;
 scalar_t__ vx_check_isr (struct vx_core*,int ,int ,int) ;
 scalar_t__ vx_send_irq_dsp (struct vx_core*,int ) ;

__attribute__((used)) static int vx_reset_chk(struct vx_core *chip)
{

 if (vx_send_irq_dsp(chip, IRQ_RESET_CHK) < 0)
  return -EIO;

 if (vx_check_isr(chip, ISR_CHK, 0, 200) < 0)
  return -EIO;
 return 0;
}
