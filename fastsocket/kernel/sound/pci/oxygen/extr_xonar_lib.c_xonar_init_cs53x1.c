
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int GPIO_CS53x1_M_MASK ;
 int GPIO_CS53x1_M_SINGLE ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;

void xonar_init_cs53x1(struct oxygen *chip)
{
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, GPIO_CS53x1_M_MASK);
 oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
         GPIO_CS53x1_M_SINGLE, GPIO_CS53x1_M_MASK);
}
