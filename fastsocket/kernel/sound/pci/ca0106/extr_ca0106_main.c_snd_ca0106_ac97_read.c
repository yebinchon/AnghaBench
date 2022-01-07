
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int emu_lock; scalar_t__ port; } ;
struct snd_ac97 {struct snd_ca0106* private_data; } ;


 scalar_t__ AC97ADDRESS ;
 scalar_t__ AC97DATA ;
 unsigned short inw (scalar_t__) ;
 int outb (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned short snd_ca0106_ac97_read(struct snd_ac97 *ac97,
          unsigned short reg)
{
 struct snd_ca0106 *emu = ac97->private_data;
 unsigned long flags;
 unsigned short val;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outb(reg, emu->port + AC97ADDRESS);
 val = inw(emu->port + AC97DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
 return val;
}
