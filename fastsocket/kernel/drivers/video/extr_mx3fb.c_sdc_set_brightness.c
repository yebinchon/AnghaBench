
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mx3fb_data {int dummy; } ;


 int SDC_PWM_CTRL ;
 int mx3fb_write_reg (struct mx3fb_data*,int,int ) ;

__attribute__((used)) static void sdc_set_brightness(struct mx3fb_data *mx3fb, uint8_t value)
{

 mx3fb_write_reg(mx3fb, 0x03000000UL | value << 16, SDC_PWM_CTRL);
 return;
}
