
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int OXYGEN_2WIRE_BUS_STATUS ;
 int OXYGEN_2WIRE_INTERRUPT_MASK ;
 int OXYGEN_2WIRE_LENGTH_8 ;
 int OXYGEN_2WIRE_SPEED_STANDARD ;
 int oxygen_write16 (struct oxygen*,int ,int) ;

__attribute__((used)) static void xonar_st_init_i2c(struct oxygen *chip)
{
 oxygen_write16(chip, OXYGEN_2WIRE_BUS_STATUS,
         OXYGEN_2WIRE_LENGTH_8 |
         OXYGEN_2WIRE_INTERRUPT_MASK |
         OXYGEN_2WIRE_SPEED_STANDARD);
}
