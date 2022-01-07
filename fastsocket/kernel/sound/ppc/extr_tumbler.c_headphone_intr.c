
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int (* update_automute ) (struct snd_pmac*,int) ;scalar_t__ initialized; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int stub1 (struct snd_pmac*,int) ;

__attribute__((used)) static irqreturn_t headphone_intr(int irq, void *devid)
{
 struct snd_pmac *chip = devid;
 if (chip->update_automute && chip->initialized) {
  chip->update_automute(chip, 1);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
