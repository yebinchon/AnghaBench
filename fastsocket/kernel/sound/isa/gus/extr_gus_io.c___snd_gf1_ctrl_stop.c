
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_data8; int reg_regsel; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 unsigned char inb (int ) ;
 int mb () ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void __snd_gf1_ctrl_stop(struct snd_gus_card * gus, unsigned char reg)
{
 unsigned char value;

 outb(reg | 0x80, gus->gf1.reg_regsel);
 mb();
 value = inb(gus->gf1.reg_data8);
 mb();
 outb(reg, gus->gf1.reg_regsel);
 mb();
 outb((value | 0x03) & ~(0x80 | 0x20), gus->gf1.reg_data8);
 mb();
}
