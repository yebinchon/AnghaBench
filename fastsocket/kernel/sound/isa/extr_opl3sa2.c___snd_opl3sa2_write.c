
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3sa2 {unsigned char* ctlregs; scalar_t__ port; } ;


 int outb (unsigned char,scalar_t__) ;
 scalar_t__ port ;

__attribute__((used)) static void __snd_opl3sa2_write(struct snd_opl3sa2 *chip, unsigned char reg, unsigned char value)
{



 outb(reg, chip->port);
 outb(value, chip->port + 1);
 chip->ctlregs[reg] = value;
}
