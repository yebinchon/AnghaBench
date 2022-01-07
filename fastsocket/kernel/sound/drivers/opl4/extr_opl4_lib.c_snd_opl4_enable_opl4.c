
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {scalar_t__ fm_port; } ;


 int OPL3_OPL3_ENABLE ;
 int OPL3_OPL4_ENABLE ;
 int OPL3_REG_MODE ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void snd_opl4_enable_opl4(struct snd_opl4 *opl4)
{
 outb(OPL3_REG_MODE, opl4->fm_port + 2);
 inb(opl4->fm_port);
 inb(opl4->fm_port);
 outb(OPL3_OPL3_ENABLE | OPL3_OPL4_ENABLE, opl4->fm_port + 3);
 inb(opl4->fm_port);
 inb(opl4->fm_port);
}
