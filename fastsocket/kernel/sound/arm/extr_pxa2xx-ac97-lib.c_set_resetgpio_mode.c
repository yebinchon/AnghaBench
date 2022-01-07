
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_ALT_FN_1_OUT ;
 int GPIO_ALT_FN_2_OUT ;
 int GPIO_DFLT_HIGH ;
 int GPIO_DFLT_LOW ;
 int GPIO_OUT ;



 int pxa_gpio_mode (int) ;
 int reset_gpio ;

__attribute__((used)) static void set_resetgpio_mode(int resetgpio_action)
{
 int mode = 0;

 if (reset_gpio)
  switch (resetgpio_action) {
  case 128:
   if (reset_gpio == 113)
    mode = 113 | GPIO_ALT_FN_2_OUT;
   if (reset_gpio == 95)
    mode = 95 | GPIO_ALT_FN_1_OUT;
   break;
  case 129:
   mode = reset_gpio | GPIO_OUT | GPIO_DFLT_LOW;
   break;
  case 130:
   mode = reset_gpio | GPIO_OUT | GPIO_DFLT_HIGH;
   break;
  };

 if (mode)
  pxa_gpio_mode(mode);
}
