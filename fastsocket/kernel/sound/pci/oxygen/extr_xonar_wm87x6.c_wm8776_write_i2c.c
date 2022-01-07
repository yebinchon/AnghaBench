
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int I2C_DEVICE_WM8776 ;
 int oxygen_write_i2c (struct oxygen*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void wm8776_write_i2c(struct oxygen *chip,
        unsigned int reg, unsigned int value)
{
 oxygen_write_i2c(chip, I2C_DEVICE_WM8776,
    (reg << 1) | (value >> 8), value);
}
