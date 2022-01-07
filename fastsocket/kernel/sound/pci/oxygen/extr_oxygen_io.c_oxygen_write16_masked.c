
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int * _16; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;


 int cpu_to_le16 (int) ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

void oxygen_write16_masked(struct oxygen *chip, unsigned int reg,
      u16 value, u16 mask)
{
 u16 tmp = inw(chip->addr + reg);
 tmp &= ~mask;
 tmp |= value & mask;
 outw(tmp, chip->addr + reg);
 chip->saved_registers._16[reg / 2] = cpu_to_le16(tmp);
}
