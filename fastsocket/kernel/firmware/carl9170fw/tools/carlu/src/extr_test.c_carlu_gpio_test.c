
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct carlu {int dummy; } ;


 int AR9170_GPIO_PORT_LED_0 ;
 int AR9170_GPIO_PORT_LED_1 ;
 int AR9170_GPIO_REG_PORT_DATA ;
 int CHK (int ) ;
 int SDL_Delay (int) ;
 int carlu_cmd_read_mem (struct carlu*,int ,int *) ;
 int carlu_cmd_write_mem (struct carlu*,int ,int) ;
 int info (char*,int ) ;

int carlu_gpio_test(struct carlu *ar)
{
 uint32_t gpio;
 do { int __err = carlu_cmd_read_mem(ar, AR9170_GPIO_REG_PORT_DATA, &gpio); if ((__err)) return __err; } while (0);
 info("GPIO state:%x\n", gpio);


 do { int __err = carlu_cmd_write_mem(ar, AR9170_GPIO_REG_PORT_DATA, AR9170_GPIO_PORT_LED_0 | AR9170_GPIO_PORT_LED_1); if ((__err)) return __err; } while (0);


 SDL_Delay(700);

 do { int __err = carlu_cmd_read_mem(ar, AR9170_GPIO_REG_PORT_DATA, &gpio); if ((__err)) return __err; } while (0);
 info("GPIO state:%x\n", gpio);


 do { int __err = carlu_cmd_write_mem(ar, AR9170_GPIO_REG_PORT_DATA, 0); if ((__err)) return __err; } while (0);

 do { int __err = carlu_cmd_read_mem(ar, AR9170_GPIO_REG_PORT_DATA, &gpio); if ((__err)) return __err; } while (0);
 info("GPIO state:%x\n", gpio);
}
