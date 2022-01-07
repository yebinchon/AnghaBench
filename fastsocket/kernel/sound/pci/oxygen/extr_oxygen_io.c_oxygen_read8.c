
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {scalar_t__ addr; } ;


 int inb (scalar_t__) ;

u8 oxygen_read8(struct oxygen *chip, unsigned int reg)
{
 return inb(chip->addr + reg);
}
