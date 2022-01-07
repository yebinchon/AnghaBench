
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int OXYGEN_FUNCTION ;
 int OXYGEN_FUNCTION_RESET_CODEC ;
 int cs43xx_registers_init (struct oxygen*) ;
 int msleep (int) ;
 int oxygen_set_bits8 (struct oxygen*,int ,int ) ;
 int xonar_enable_output (struct oxygen*) ;

__attribute__((used)) static void xonar_d1_resume(struct oxygen *chip)
{
 oxygen_set_bits8(chip, OXYGEN_FUNCTION, OXYGEN_FUNCTION_RESET_CODEC);
 msleep(1);
 cs43xx_registers_init(chip);
 xonar_enable_output(chip);
}
