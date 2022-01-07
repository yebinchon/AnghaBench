
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int GPIO_CTRL ;
 unsigned int READREG (int ) ;

int snd_aw2_saa7146_is_using_digital_input(struct snd_aw2_saa7146 *chip)
{
 unsigned int reg_val = READREG(GPIO_CTRL);
 if ((reg_val & 0xFF) == 0x40)
  return 1;
 else
  return 0;
}
