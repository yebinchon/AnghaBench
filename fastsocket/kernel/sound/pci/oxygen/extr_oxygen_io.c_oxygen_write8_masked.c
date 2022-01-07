
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* _8; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;


 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

void oxygen_write8_masked(struct oxygen *chip, unsigned int reg,
     u8 value, u8 mask)
{
 u8 tmp = inb(chip->addr + reg);
 tmp &= ~mask;
 tmp |= value & mask;
 outb(tmp, chip->addr + reg);
 chip->saved_registers._8[reg] = tmp;
}
