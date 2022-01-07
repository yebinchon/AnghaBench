
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int * _16; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;


 int cpu_to_le16 (int ) ;
 int outw (int ,scalar_t__) ;

void oxygen_write16(struct oxygen *chip, unsigned int reg, u16 value)
{
 outw(value, chip->addr + reg);
 chip->saved_registers._16[reg / 2] = cpu_to_le16(value);
}
