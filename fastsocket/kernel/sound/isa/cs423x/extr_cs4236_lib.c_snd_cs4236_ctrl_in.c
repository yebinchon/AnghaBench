
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {scalar_t__ cport; } ;


 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static unsigned char snd_cs4236_ctrl_in(struct snd_wss *chip, unsigned char reg)
{
 outb(reg, chip->cport + 3);
 return inb(chip->cport + 4);
}
