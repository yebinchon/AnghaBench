
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int l3_mode; int l3_clk; int l3_data; } ;


 int gpio_free (int ) ;
 int platform_device_unregister (int ) ;
 TYPE_1__* s3c24xx_uda134x_l3_pins ;
 int s3c24xx_uda134x_snd_device ;

__attribute__((used)) static int s3c24xx_uda134x_remove(struct platform_device *pdev)
{
 platform_device_unregister(s3c24xx_uda134x_snd_device);
 gpio_free(s3c24xx_uda134x_l3_pins->l3_data);
 gpio_free(s3c24xx_uda134x_l3_pins->l3_clk);
 gpio_free(s3c24xx_uda134x_l3_pins->l3_mode);
 return 0;
}
