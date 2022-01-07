
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1 {int spi_lock; TYPE_1__* card_capabilities; } ;
struct TYPE_2__ {scalar_t__ ca0108_chip; } ;


 unsigned int snd_emu10k1_ptr20_read (struct snd_emu10k1*,unsigned int,int ) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,unsigned int,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

int snd_emu10k1_spi_write(struct snd_emu10k1 * emu,
       unsigned int data)
{
 unsigned int reset, set;
 unsigned int reg, tmp;
 int n, result;
 int err = 0;


 spin_lock(&emu->spi_lock);
 if (emu->card_capabilities->ca0108_chip)
  reg = 0x3c;
 else {


  err = 1;
  goto spi_write_exit;
 }
 if (data > 0xffff) {

  err = 1;
  goto spi_write_exit;
 }

 tmp = snd_emu10k1_ptr20_read(emu, reg, 0);
 reset = (tmp & ~0x3ffff) | 0x20000;
 set = reset | 0x10000;
 snd_emu10k1_ptr20_write(emu, reg, 0, reset | data);
 tmp = snd_emu10k1_ptr20_read(emu, reg, 0);
 snd_emu10k1_ptr20_write(emu, reg, 0, set | data);
 result = 1;

 for (n = 0; n < 100; n++) {
  udelay(10);
  tmp = snd_emu10k1_ptr20_read(emu, reg, 0);
  if (!(tmp & 0x10000)) {
   result = 0;
   break;
  }
 }
 if (result) {

  err = 1;
  goto spi_write_exit;
 }
 snd_emu10k1_ptr20_write(emu, reg, 0, reset | data);
 tmp = snd_emu10k1_ptr20_read(emu, reg, 0);
 err = 0;
spi_write_exit:
 spin_unlock(&emu->spi_lock);
 return err;
}
