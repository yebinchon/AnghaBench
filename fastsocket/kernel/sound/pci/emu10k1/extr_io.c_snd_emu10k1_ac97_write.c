
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;
struct snd_ac97 {struct snd_emu10k1* private_data; } ;


 scalar_t__ AC97ADDRESS ;
 scalar_t__ AC97DATA ;
 int outb (unsigned short,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_emu10k1_ac97_write(struct snd_ac97 *ac97, unsigned short reg, unsigned short data)
{
 struct snd_emu10k1 *emu = ac97->private_data;
 unsigned long flags;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outb(reg, emu->port + AC97ADDRESS);
 outw(data, emu->port + AC97DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
