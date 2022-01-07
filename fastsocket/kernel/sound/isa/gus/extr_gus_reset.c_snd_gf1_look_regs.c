
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int reg_lock; } ;


 int GUSP (struct snd_gus_card*,int ) ;
 int IRQSTAT ;
 int inb (int ) ;
 int snd_gf1_look8 (struct snd_gus_card*,int) ;
 int snd_gf1_read8 (struct snd_gus_card*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_look_regs(struct snd_gus_card * gus)
{
 unsigned long flags;

 spin_lock_irqsave(&gus->reg_lock, flags);
 snd_gf1_look8(gus, 0x41);
 snd_gf1_look8(gus, 0x49);
 inb(GUSP(gus, IRQSTAT));
 snd_gf1_read8(gus, 0x0f);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
}
