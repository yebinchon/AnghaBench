
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_ice1712 {int dummy; } ;


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int IRQMASK ;
 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static void enable_midi_irq(struct snd_ice1712 *ice, u8 flag, int enable)
{
 u8 mask = inb(ICEREG1724(ice, IRQMASK));
 if (enable)
  mask &= ~flag;
 else
  mask |= flag;
 outb(mask, ICEREG1724(ice, IRQMASK));
}
