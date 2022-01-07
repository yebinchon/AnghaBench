
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_L_MUTE ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int tosa_probe(struct platform_device *dev)
{
 int ret;

 ret = gpio_request(TOSA_GPIO_L_MUTE, "Headphone Jack");
 if (ret)
  return ret;
 ret = gpio_direction_output(TOSA_GPIO_L_MUTE, 0);
 if (ret)
  gpio_free(TOSA_GPIO_L_MUTE);

 return ret;
}
