
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgi_lcd {int gpio_backlight_cont_inverted; int intensity; int (* kick_battery ) () ;int gpio_backlight_on; int gpio_backlight_cont; } ;


 int DUTYCTRL_ADRS ;
 int corgi_ssp_lcdtg_send (struct corgi_lcd*,int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int stub1 () ;

__attribute__((used)) static int corgi_bl_set_intensity(struct corgi_lcd *lcd, int intensity)
{
 int cont;

 if (intensity > 0x10)
  intensity += 0x10;

 corgi_ssp_lcdtg_send(lcd, DUTYCTRL_ADRS, intensity);


 cont = !!(intensity & 0x20) ^ lcd->gpio_backlight_cont_inverted;

 if (gpio_is_valid(lcd->gpio_backlight_cont))
  gpio_set_value(lcd->gpio_backlight_cont, cont);

 if (gpio_is_valid(lcd->gpio_backlight_on))
  gpio_set_value(lcd->gpio_backlight_on, intensity);

 if (lcd->kick_battery)
  lcd->kick_battery();

 lcd->intensity = intensity;
 return 0;
}
