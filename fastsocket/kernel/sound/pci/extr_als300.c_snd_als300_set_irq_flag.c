
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_als300 {int revision; scalar_t__ chip_type; int port; } ;


 scalar_t__ DEVICE_ALS300_PLUS ;
 int IRQ_ENABLE ;
 int IRQ_SET_BIT ;
 int MISC_CONTROL ;
 int snd_als300_dbgcallenter () ;
 int snd_als300_dbgcallleave () ;
 int snd_als300_gcr_read (int ,int ) ;
 int snd_als300_gcr_write (int ,int ,int ) ;

__attribute__((used)) static void snd_als300_set_irq_flag(struct snd_als300 *chip, int cmd)
{
 u32 tmp = snd_als300_gcr_read(chip->port, MISC_CONTROL);
 snd_als300_dbgcallenter();




 if (((chip->revision > 5 || chip->chip_type == DEVICE_ALS300_PLUS) ^
      (cmd == IRQ_ENABLE)) == 0)
  tmp |= IRQ_SET_BIT;
 else
  tmp &= ~IRQ_SET_BIT;
 snd_als300_gcr_write(chip->port, MISC_CONTROL, tmp);
 snd_als300_dbgcallleave();
}
