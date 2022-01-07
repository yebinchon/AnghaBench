
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct corgi_lcd {int dummy; } ;


 int POWER0_COM_DOUT ;
 int lcdtg_i2c_send_bit (struct corgi_lcd*,int) ;

__attribute__((used)) static void lcdtg_i2c_send_byte(struct corgi_lcd *lcd,
    uint8_t base, uint8_t data)
{
 int i;
 for (i = 0; i < 8; i++) {
  if (data & 0x80)
   lcdtg_i2c_send_bit(lcd, base | POWER0_COM_DOUT);
  else
   lcdtg_i2c_send_bit(lcd, base);
  data <<= 1;
 }
}
