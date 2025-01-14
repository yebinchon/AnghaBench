
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_device {int bus; struct cs8427* private_data; } ;
struct cs8427 {int* regmap; unsigned long reset_timeout; } ;


 size_t CS8427_REG_CLOCKSOURCE ;
 int CS8427_REG_RECVERRORS ;
 int CS8427_RUN ;
 int CS8427_RXDAES3INPUT ;
 int CS8427_RXDILRCK ;
 int CS8427_RXDMASK ;
 int CS8427_UNLOCK ;
 unsigned long jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_cs8427_reg_read (struct snd_i2c_device*,int ) ;
 int snd_cs8427_reg_write (struct snd_i2c_device*,size_t,int) ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_unlock (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cs8427_reset(struct snd_i2c_device *cs8427)
{
 struct cs8427 *chip;
 unsigned long end_time;
 int data, aes3input = 0;

 if (snd_BUG_ON(!cs8427))
  return;
 chip = cs8427->private_data;
 snd_i2c_lock(cs8427->bus);
 if ((chip->regmap[CS8427_REG_CLOCKSOURCE] & CS8427_RXDAES3INPUT) ==
     CS8427_RXDAES3INPUT)
  aes3input = 1;
 chip->regmap[CS8427_REG_CLOCKSOURCE] &= ~(CS8427_RUN | CS8427_RXDMASK);
 snd_cs8427_reg_write(cs8427, CS8427_REG_CLOCKSOURCE,
        chip->regmap[CS8427_REG_CLOCKSOURCE]);
 udelay(200);
 chip->regmap[CS8427_REG_CLOCKSOURCE] |= CS8427_RUN | CS8427_RXDILRCK;
 snd_cs8427_reg_write(cs8427, CS8427_REG_CLOCKSOURCE,
        chip->regmap[CS8427_REG_CLOCKSOURCE]);
 udelay(200);
 snd_i2c_unlock(cs8427->bus);
 end_time = jiffies + chip->reset_timeout;
 while (time_after_eq(end_time, jiffies)) {
  snd_i2c_lock(cs8427->bus);
  data = snd_cs8427_reg_read(cs8427, CS8427_REG_RECVERRORS);
  snd_i2c_unlock(cs8427->bus);
  if (!(data & CS8427_UNLOCK))
   break;
  schedule_timeout_uninterruptible(1);
 }
 snd_i2c_lock(cs8427->bus);
 chip->regmap[CS8427_REG_CLOCKSOURCE] &= ~CS8427_RXDMASK;
 if (aes3input)
  chip->regmap[CS8427_REG_CLOCKSOURCE] |= CS8427_RXDAES3INPUT;
 snd_cs8427_reg_write(cs8427, CS8427_REG_CLOCKSOURCE,
        chip->regmap[CS8427_REG_CLOCKSOURCE]);
 snd_i2c_unlock(cs8427->bus);
}
