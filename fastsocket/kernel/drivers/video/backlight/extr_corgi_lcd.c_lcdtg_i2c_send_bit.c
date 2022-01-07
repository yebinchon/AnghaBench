
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct corgi_lcd {int dummy; } ;


 int POWER0_COM_DCLK ;
 int lcdtg_ssp_i2c_send (struct corgi_lcd*,int) ;

__attribute__((used)) static void lcdtg_i2c_send_bit(struct corgi_lcd *lcd, uint8_t data)
{
 lcdtg_ssp_i2c_send(lcd, data);
 lcdtg_ssp_i2c_send(lcd, data | POWER0_COM_DCLK);
 lcdtg_ssp_i2c_send(lcd, data);
}
