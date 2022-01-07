
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {unsigned long r_port; unsigned long l_port; int reg_lock; } ;


 unsigned short OPL3_RIGHT ;
 int outb (unsigned char,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void snd_opl2_command(struct snd_opl3 * opl3, unsigned short cmd, unsigned char val)
{
 unsigned long flags;
 unsigned long port;






 port = (cmd & OPL3_RIGHT) ? opl3->r_port : opl3->l_port;

 spin_lock_irqsave(&opl3->reg_lock, flags);

 outb((unsigned char) cmd, port);
 udelay(10);

 outb((unsigned char) val, port + 1);
 udelay(30);

 spin_unlock_irqrestore(&opl3->reg_lock, flags);
}
