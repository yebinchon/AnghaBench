
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_L_MUTE ;
 int gpio_free (int ) ;

__attribute__((used)) static int tosa_remove(struct platform_device *dev)
{
 gpio_free(TOSA_GPIO_L_MUTE);
 return 0;
}
