
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct corgi_lcd_platform_data {int gpio_backlight_on; int gpio_backlight_cont; } ;
struct corgi_lcd {int gpio_backlight_on; int gpio_backlight_cont; int gpio_backlight_cont_inverted; struct spi_device* spi_dev; } ;


 int dev_err (int *,char*,int) ;
 int gpio_direction_output (int,int) ;
 int gpio_free (int) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_request (int,char*) ;

__attribute__((used)) static int setup_gpio_backlight(struct corgi_lcd *lcd,
    struct corgi_lcd_platform_data *pdata)
{
 struct spi_device *spi = lcd->spi_dev;
 int err;

 lcd->gpio_backlight_on = -1;
 lcd->gpio_backlight_cont = -1;

 if (gpio_is_valid(pdata->gpio_backlight_on)) {
  err = gpio_request(pdata->gpio_backlight_on, "BL_ON");
  if (err) {
   dev_err(&spi->dev, "failed to request GPIO%d for "
    "backlight_on\n", pdata->gpio_backlight_on);
   return err;
  }

  lcd->gpio_backlight_on = pdata->gpio_backlight_on;
  gpio_direction_output(lcd->gpio_backlight_on, 0);
 }

 if (gpio_is_valid(pdata->gpio_backlight_cont)) {
  err = gpio_request(pdata->gpio_backlight_cont, "BL_CONT");
  if (err) {
   dev_err(&spi->dev, "failed to request GPIO%d for "
    "backlight_cont\n", pdata->gpio_backlight_cont);
   goto err_free_backlight_on;
  }

  lcd->gpio_backlight_cont = pdata->gpio_backlight_cont;




  if (gpio_is_valid(lcd->gpio_backlight_on)) {
   lcd->gpio_backlight_cont_inverted = 1;
   gpio_direction_output(lcd->gpio_backlight_cont, 1);
  } else {
   lcd->gpio_backlight_cont_inverted = 0;
   gpio_direction_output(lcd->gpio_backlight_cont, 0);
  }
 }
 return 0;

err_free_backlight_on:
 if (gpio_is_valid(lcd->gpio_backlight_on))
  gpio_free(lcd->gpio_backlight_on);
 return err;
}
