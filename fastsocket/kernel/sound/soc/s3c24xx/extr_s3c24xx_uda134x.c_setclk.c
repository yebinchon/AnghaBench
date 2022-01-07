
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l3_clk; } ;


 int gpio_set_value (int ,int) ;
 TYPE_1__* s3c24xx_uda134x_l3_pins ;

__attribute__((used)) static void setclk(int v)
{
 gpio_set_value(s3c24xx_uda134x_l3_pins->l3_clk, v > 0);
}
