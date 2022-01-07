
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * _8; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;


 int outb (int ,scalar_t__) ;

void oxygen_write8(struct oxygen *chip, unsigned int reg, u8 value)
{
 outb(value, chip->addr + reg);
 chip->saved_registers._8[reg] = value;
}
