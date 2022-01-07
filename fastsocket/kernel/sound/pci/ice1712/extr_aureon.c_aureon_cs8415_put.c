
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AUREON_CS8415_CS ;
 int aureon_spi_write (struct snd_ice1712*,int ,int,int) ;

__attribute__((used)) static void aureon_cs8415_put(struct snd_ice1712 *ice, int reg,
      unsigned char val)
{
 aureon_spi_write(ice, AUREON_CS8415_CS, 0x200000 | (reg << 8) | val, 24);
}
