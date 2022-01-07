
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

__attribute__((used)) static inline unsigned char __snd_gf1_look8(struct snd_gus_card * gus,
         unsigned char reg)
{
 outb(reg, gus->gf1.reg_regsel);
 mb();
 return inb(gus->gf1.reg_data8);
}
