
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int GPIO_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_DATA ;
 int msleep (int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;

__attribute__((used)) static void dg_output_enable(struct oxygen *chip)
{
 msleep(2500);
 oxygen_set_bits16(chip, OXYGEN_GPIO_DATA, GPIO_OUTPUT_ENABLE);
}
