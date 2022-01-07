
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 scalar_t__ IO_ADDRESS (int ) ;
 int PNX4008_PIO_BASE ;
 int iowrite32 (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_reset(void)
{
 u32 *dum_pio_base = (u32 *)IO_ADDRESS(PNX4008_PIO_BASE);

 udelay(1);
 iowrite32(BIT(19), &dum_pio_base[2]);
 udelay(1);
 iowrite32(BIT(19), &dum_pio_base[1]);
 udelay(1);
}
